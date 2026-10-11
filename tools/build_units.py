#!/usr/bin/env python3
"""Rebuild symbols/units.csv from symbols/matches.csv.

Each run of matched functions that is at least 64 bytes long becomes one unit (done). All other code in the .text section
is split at 64 KB block boundaries into units that are not done. Units cover .text exactly, with no overlaps.
usage: python tools/build_units.py
"""
import csv
import os

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
TS, SZ, BLK = 0x02000020, 10132008, 0x10000
END = TS + SZ - 1
MIN_RUN = 64


def main():
    iv = []
    for r in csv.reader(open(os.path.join(ROOT, 'symbols', 'matches.csv'), newline='')):
        if not r or r[0].startswith('address') or len(r) < 7:
            continue
        if r[6].strip() == 'matched':
            iv.append((int(r[0], 16), int(r[5])))
    iv.sort()
    runs = []
    for a, s in iv:
        if runs and a <= runs[-1][1]:
            runs[-1][1] = max(runs[-1][1], a + s)
        else:
            runs.append([a, a + s])
    done = sorted((a, b - 1) for a, b in runs if b - a >= MIN_RUN)
    units = []

    def leftover(a, b):
        x = a
        while x <= b:
            y = min(b, (x // BLK + 1) * BLK - 1)
            units.append((f'block_0x{x:08x}', x, y))
            x = y + 1

    pos = TS
    for ds, de in done:
        if pos < ds:
            leftover(pos, ds - 1)
        units.append((f'done_0x{ds:08x}', ds, de))
        pos = de + 1
    if pos <= END:
        leftover(pos, END)
    with open(os.path.join(ROOT, 'symbols', 'units.csv'), 'w', newline='') as f:
        w = csv.writer(f)
        w.writerow(['name', 'start', 'end'])
        for n, a, b in units:
            w.writerow([n, f'0x{a:08x}', f'0x{b:08x}'])
    print(f'units: {len(units)}  done: {len(done)}  matched bytes in done units: {sum(b - a + 1 for a, b in done)}')


if __name__ == '__main__':
    main()
