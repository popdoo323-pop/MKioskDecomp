#!/usr/bin/env python3
"""Assemble one PowerPC assembly file and compare its .text with the original bytes in your RPX.

usage: python tools/asmmatch.py --orig orig/Turbo.rpx --address 0x02133298 --size 12 \
           --source src/asm/Game/Item/ItemCoin_Vfn_02133298.s
       python tools/asmmatch.py ... --define FUN_023f8f88=0x023f8f88
           (for branches and calls to other functions; the file is linked at --address)

Exit status 0 means identical. No compiler is involved, so the result does not depend on the
game's toolchain. A match shows that the assembly encodes to the original bytes.
"""
import argparse
import os
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import rpxlib  # noqa: E402


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--orig', required=True)
    ap.add_argument('--address', required=True)
    ap.add_argument('--size', required=True, type=int)
    ap.add_argument('--source', required=True)
    ap.add_argument('--as', dest='assembler', default='powerpc-linux-gnu-as')
    ap.add_argument('--ld', default='powerpc-linux-gnu-ld')
    ap.add_argument('--define', action='append', default=[],
                    help='SYMBOL=ADDRESS for an external symbol; the file is then linked at --address')
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
        r = subprocess.run([a.assembler, '-mbig', '-a32', '-mregnames', '-o', obj, a.source], capture_output=True, text=True)
        if r.returncode != 0:
            print('assemble failed:\n' + r.stderr)
            return 2
        if a.define:
            # link so that relocations (branches to other functions) are resolved at the real address
            elf = os.path.join(tmp, 'out.elf')
            cmd = [a.ld, '-m', 'elf32ppc', '-EB', f'-Ttext=0x{addr:08x}', '-e', '0', '-o', elf, obj]
            cmd += [f'--defsym={d}' for d in a.define]
            r = subprocess.run(cmd, capture_output=True, text=True)
            if r.returncode != 0:
                print('link failed:\n' + r.stderr)
                return 2
            obj = elf
        built = rpxlib.load(obj)
        out = next((s for s in built.sections if s.name == '.text'), None)
        built_bytes = out.data if out else b''

    print(f'original 0x{addr:08x}: {original.hex()}  ({len(original)} bytes)')
    print(f'assembled:          {built_bytes.hex()}  ({len(built_bytes)} bytes)')
    same = built_bytes == original
    print(f'assembler: {a.assembler}')
    print('MATCH' if same else 'DIFFERENT')
    return 0 if same else 1


if __name__ == '__main__':
    sys.exit(main())
