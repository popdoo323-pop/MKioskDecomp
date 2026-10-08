#!/usr/bin/env python3
"""Check an RPX or RPL against its own CRC table and, optionally, a known SHA-256.

usage: python tools/rpx_verify.py FILE [--sha256 HASH] [--extract DIR]

--extract writes each non-empty section to DIR/<name>.section.bin (decompressed).
Exit status is 0 when everything checks out, 1 otherwise.
"""
import argparse
import hashlib
import os
import struct
import sys
import zlib

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import rpxlib  # noqa: E402


def main(argv=None):
    ap = argparse.ArgumentParser(description='Check an RPX/RPL against its CRC table and an optional SHA-256.')
    ap.add_argument('file')
    ap.add_argument('--sha256', help='expected SHA-256 of the whole file')
    ap.add_argument('--extract', metavar='DIR', help='write each section to DIR/<name>.section.bin')
    args = ap.parse_args(argv)

    f = rpxlib.load(args.file)
    ok = True
    digest = hashlib.sha256(f.raw).hexdigest()
    print(f'{args.file}: {len(f.raw)} bytes, sha256={digest}, entry=0x{f.entry:08x}')
    if args.sha256:
        match = digest == args.sha256.lower()
        ok = ok and match
        print('SHA-256 OK' if match else 'SHA-256 MISMATCH')

    crc_sec = next((s for s in f.sections if s.type == rpxlib.SHT_CAFE_CRC), None)
    if crc_sec is None:
        print('no CRC section found')
        return 1
    table = struct.unpack('>%dI' % (len(crc_sec.data) // 4), crc_sec.data)

    bad = 0
    for s in f.sections:
        if s.type in (0, rpxlib.SHT_CAFE_CRC):
            continue
        calc = 0 if s.type == rpxlib.SHT_NOBITS else zlib.crc32(s.data) & 0xFFFFFFFF
        expected = table[s.index] if s.index < len(table) else None
        good = calc == expected
        bad += not good
        print(f'{s.index:>3} {s.name:<22} {s.mem_size:>10} bytes  crc {"OK" if good else "MISMATCH"}')
        if args.extract and s.name and s.type != rpxlib.SHT_NOBITS:
            os.makedirs(args.extract, exist_ok=True)
            out = os.path.join(args.extract, s.name.lstrip('.') + '.section.bin')
            with open(out, 'wb') as fh:
                fh.write(s.data)

    print(f'CRC mismatches: {bad}')
    return 0 if (ok and bad == 0) else 1


if __name__ == '__main__':
    sys.exit(main())
