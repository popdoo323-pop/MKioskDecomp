#!/usr/bin/env python3
"""Prologue statistics read directly from an RPX or RPL file (no objdump needed).

usage: python tools/prologue_stats_rpx.py FILE.rpl [FILE.rpx ...]

Same definition as tests/compiler/prologue_breakdown.py and the game analysis: a prologue is a stwu r1,-N(r1) found in
the first few instructions of a function. Callee-saved registers (r14..r31) stored in the next 14 instructions are
counted, stopping at the first branch or call. Prints the 8-mod-16 rate for each count.
"""
import os
import struct
import sys
from collections import defaultdict

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import rpxlib  # noqa: E402


def stats(text):
    n = len(text)

    def w(i):
        return struct.unpack('>I', text[i:i + 4])[0]

    rows = defaultdict(lambda: [0, 0])
    for i in range(0, n - 64, 4):
        op = w(i)
        if (op >> 16) != 0x9421:
            continue
        imm = op & 0xFFFF
        frame = -(imm - 0x10000) if imm & 0x8000 else imm
        if frame <= 0 or frame > 4096:
            continue
        saved = 0
        for k in range(1, 15):
            v = w(i + 4 * k)
            if (v >> 26) in (16, 18):             # branch or call ends the prologue
                break
            if (v >> 26) == 36 and ((v >> 16) & 31) == 1 and 14 <= ((v >> 21) & 31) <= 31:
                saved += 1
            if (v >> 26) == 47:                    # stmw rS,d(r1)
                saved += 32 - ((v >> 21) & 31)
        rows[saved][0] += 1
        if frame % 16 == 8:
            rows[saved][1] += 1
    return rows


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    total = defaultdict(lambda: [0, 0])
    for path in sys.argv[1:]:
        f = rpxlib.load(path)
        text_sec = next((s for s in f.sections if s.name == '.text'), None)
        if text_sec is None:
            print(f'{path}: no .text section')
            continue
        rows = stats(text_sec.data)
        t = sum(v[0] for v in rows.values())
        e = sum(v[1] for v in rows.values())
        print(f'{os.path.basename(path)}: prologues={t}  8 mod 16={e} ({100 * e / max(t, 1):.1f}%)')
        for k, v in rows.items():
            total[k][0] += v[0]
            total[k][1] += v[1]
    print('\nsaved callee regs | prologues | 8 mod 16 | share')
    for k in sorted(total):
        t, e = total[k]
        if t:
            print(f'{k:17d} | {t:9d} | {e:8d} | {100 * e / t:5.1f}%')
    T = sum(v[0] for v in total.values())
    E = sum(v[1] for v in total.values())
    print(f'total prologues {T}, 8 mod 16 {E} ({100 * E / max(T, 1):.1f}%)')


if __name__ == '__main__':
    sys.exit(main())