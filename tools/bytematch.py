#!/usr/bin/env python3
"""Compile one C/C++ source file and compare its .text with the original bytes in your RPX.

usage: python tools/bytematch.py --orig orig/Turbo.rpx --address 0x02132ff0 --size 4 \
           --source src/Game/Item/ItemCoin_Empty.cpp [--cc powerpc-eabi-gcc] [--cflags "-O2"]

Comparison is exact. Calls and data references are not masked. A match here only shows that this compiler and these
flags produce these bytes for this function. It does not prove the game's own toolchain was used.
"""
import argparse
import os
import shlex
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import rpxlib  # noqa: E402


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--orig', required=True)
    ap.add_argument('--address', required=True, help='hex address of the function in the original binary')
    ap.add_argument('--size', required=True, type=int, help='size of the function in bytes')
    ap.add_argument('--source', required=True)
    ap.add_argument('--cc', default='powerpc-eabi-gcc')
    ap.add_argument('--cflags', default='-O2')
    a = ap.parse_args()

    addr = int(a.address, 16)
    f = rpxlib.load(a.orig)
    text = next(s for s in f.sections if s.name == '.text')
    off = addr - text.addr
    if off < 0 or off + a.size > len(text.data):
        print(f'address 0x{addr:08x} is outside .text')
        return 2
    original = text.data[off:off + a.size]

    with tempfile.TemporaryDirectory() as tmp:
        obj = os.path.join(tmp, 'out.o')
        cmd = [a.cc, *shlex.split(a.cflags), '-c', a.source, '-o', obj]
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0:
            print('compile failed:\n' + r.stderr)
            return 2
        built = rpxlib.load(obj)
        out_text = next((s for s in built.sections if s.name == '.text'), None)
        built_bytes = out_text.data if out_text else b''

    print(f'original 0x{addr:08x}: {original.hex()}  ({len(original)} bytes)')
    print(f'compiled:           {built_bytes.hex()}  ({len(built_bytes)} bytes)')
    same = built_bytes == original
    print(f'compiler: {a.cc} {a.cflags}')
    print('MATCH' if same else 'DIFFERENT')
    return 0 if same else 1


if __name__ == '__main__':
    sys.exit(main())
