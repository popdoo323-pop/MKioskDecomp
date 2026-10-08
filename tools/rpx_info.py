#!/usr/bin/env python3
"""Print the section table of an RPX or RPL file.

usage: python tools/rpx_info.py FILE
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import rpxlib  # noqa: E402


def main(argv):
    if len(argv) != 2:
        print(__doc__.strip())
        return 2
    f = rpxlib.load(argv[1])
    print(f'{f.path}: {len(f.raw)} bytes, entry=0x{f.entry:08x}, {len(f.sections)} section headers')
    print(f'{"#":>3}  {"name":<22}{"type":>12}{"flags":>12}{"addr":>12}{"file":>10}{"memory":>10}  z')
    for s in f.sections:
        if s.type == 0:
            continue
        print(f'{s.index:>3}  {s.name:<22}{s.type:>#12x}{s.flags:>#12x}{s.addr:>#12x}'
              f'{s.size:>10}{s.mem_size:>10}  {"z" if s.compressed else ""}')
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
