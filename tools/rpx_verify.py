#!/usr/bin/env python3
"""Verify an RPX/RPL: print sections, check every section CRC against the
file's own CRC table, and optionally extract decompressed sections.

usage: rpx_verify.py Turbo.rpx [--extract OUTDIR] [--sha256 EXPECTED]
"""
import sys, struct, zlib, hashlib, os, argparse

def load(path):
    d = open(path, 'rb').read()
    (_, _, _, _, entry, _, shoff, _, _, _, _, shentsize, shnum, shstrndx) = struct.unpack('>16sHHIIIIIHHHHHH', d[:52])
    secs = []
    for i in range(shnum):
        o = shoff + i * shentsize
        name, typ, flags, addr, off, size, *_ = struct.unpack('>IIIIIIIIII', d[o:o+40])
        secs.append(dict(i=i, name=name, type=typ, flags=flags, addr=addr, off=off, size=size))
    def data(s):
        raw = d[s['off']:s['off'] + s['size']]
        if s['type'] == 8:
            return b''
        if s['flags'] & 0x08000000:
            return zlib.decompress(raw[4:])
        return raw
    shstr = data(secs[shstrndx])
    for s in secs:
        s['sname'] = shstr[s['name']:shstr.index(b'\0', s['name'])].decode()
    return d, entry, secs, data

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('file'); ap.add_argument('--extract'); ap.add_argument('--sha256')
    a = ap.parse_args()
    d, entry, secs, data = load(a.file)
    h = hashlib.sha256(d).hexdigest()
    print(f'{a.file}: {len(d)} bytes, sha256={h}, entry=0x{entry:08x}')
    if a.sha256:
        print('SHA-256', 'OK' if h.lower() == a.sha256.lower() else 'MISMATCH')
    crc = [s for s in secs if s['type'] == 0x80000003][0]
    tab = struct.unpack('>%dI' % (crc['size'] // 4), d[crc['off']:crc['off'] + crc['size']])
    bad = 0
    for s in secs:
        if s['type'] in (0, 0x80000003):
            continue
        calc = zlib.crc32(data(s)) & 0xffffffff
        ok = calc == tab[s['i']]
        bad += not ok
        print(f"{s['i']:>3} {s['sname']:<22} addr=0x{s['addr']:08x} size={len(data(s)):>9} crc={'OK' if ok else 'MISMATCH'}")
        if a.extract and s['sname'] and s['type'] != 8:
            os.makedirs(a.extract, exist_ok=True)
            open(os.path.join(a.extract, s['sname'].lstrip('.') + '.bin'), 'wb').write(data(s))
    print('CRC mismatches:', bad)
    sys.exit(1 if bad else 0)

if __name__ == '__main__':
    main()
