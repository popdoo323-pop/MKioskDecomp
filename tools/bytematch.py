#!/usr/bin/env python3
"""Compile one C/C++ source file and compare its code with the original bytes in your RPX.

usage: python tools/bytematch.py --orig orig/Turbo.rpx --address 0x021090a8 --size 96 \
           --source tests/compiler/linknext_test.cpp --cc "C:\\Nintendo\\GHS\\multi5327\\cxppc.exe" \
           --cflags "-pnone -Onoinline -gtws --unsigned_pointer --tdeh -Omaxdebug" \
           --incdir include --define kRailZero=0x100137c0 --define kRailOne=0x100137c4

The object is linked at --address (so calls, branches and constant loads resolve the way they do in the game). Each
--define supplies an external symbol at a fixed address. Comparison is exact. On a mismatch the first differing
instruction is printed, with the original and compiled words.

A match shows that this compiler and these flags reproduce these bytes for this function, with these constant addresses.
It does not prove the game's own toolchain was used.
"""
import argparse
import os
import shlex
import subprocess
import sys
import tempfile

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
sys.path.insert(0, os.path.join(ROOT, 'tools'))
import asmmatch  # noqa: E402
import rpxlib  # noqa: E402


def text_of(path):
    f = rpxlib.load(path)
    sec = next((s for s in f.sections if s.name == '.text'), None)
    return sec.data if sec else b''


def link_at(obj, addr, defines, ld):
    """Link one object so its .text sits at addr, with each define resolved to a fixed address."""
    with tempfile.TemporaryDirectory() as tmp:
        out = os.path.join(tmp, 'linked.elf')
        cmd = [ld, '-m', 'elf32ppc', '-EB', f'-Ttext=0x{addr:08x}', '-e', '0', '-o', out, obj]
        cmd += [f'--defsym={d}' for d in defines]
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0:
            raise RuntimeError('link failed:\n' + r.stderr)
        return text_of(out)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--orig', required=True)
    ap.add_argument('--address', required=True, help='hex address of the function in the original binary')
    ap.add_argument('--size', required=True, type=int, help='size of the function in bytes')
    ap.add_argument('--source', required=True)
    ap.add_argument('--cc', default='powerpc-eabi-gcc')
    ap.add_argument('--cflags', default='-O2')
    ap.add_argument('--incdir', action='append', default=[], help='include directory (repeatable)')
    ap.add_argument('--define', action='append', default=[], help='SYMBOL=ADDRESS external symbol (repeatable)')
    ap.add_argument('--ld', default=None)
    a = ap.parse_args()

    ld = asmmatch.find_tool(a.ld or 'powerpc-linux-gnu-ld', 'POWERPC_LD')
    if ld is None:
        print('toolchain missing: no linker found. Set POWERPC_LD to the full path of the PowerPC linker.')
        return asmmatch.EXIT_TOOLCHAIN_MISSING

    addr = int(a.address, 16)
    text = next(s for s in rpxlib.load(a.orig).sections if s.name == '.text')
    off = addr - text.addr
    if off < 0 or off + a.size > len(text.data):
        print(f'address 0x{addr:08x} is outside .text')
        return 2
    original = text.data[off:off + a.size]

    with tempfile.TemporaryDirectory() as tmp:
        obj = os.path.join(tmp, 'out.o')
        incs = []
        for d in a.incdir:
            incs += ['-I', d]
        cmd = [a.cc, *shlex.split(a.cflags), *incs, '-c', a.source, '-o', obj]
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0:
            print('compile failed:\n' + r.stderr + r.stdout)
            return 2
        defines = [d.replace('=', '=', 1) for d in a.define]
        try:
            built = link_at(obj, addr, defines, ld)[:a.size]
        except RuntimeError as e:
            print(str(e))
            return 2

    print(f'original 0x{addr:08x}: {original.hex()}  ({len(original)} bytes)')
    print(f'compiled:           {built.hex()}  ({len(built)} bytes)')
    print(f'compiler: {a.cc} {a.cflags}')
    if built == original:
        print('MATCH')
        return 0
    for i in range(0, min(len(original), len(built)), 4):
        if original[i:i + 4] != built[i:i + 4]:
            print(f'DIFFERENT at +0x{i:x}: original {original[i:i + 4].hex()}  compiled {built[i:i + 4].hex()}')
            break
    else:
        print(f'DIFFERENT in length: original {len(original)} bytes, compiled {len(built)} bytes')
    return 1


if __name__ == '__main__':
    sys.exit(main())
