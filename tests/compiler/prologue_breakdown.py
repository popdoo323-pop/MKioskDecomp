#!/usr/bin/env python3
"""Break prologues down by how many callee-saved registers each one saves.

usage: python tests/compiler/prologue_breakdown.py OBJECT_OR_FOLDER [...] [--objdump PATH] [--min N] [--hist G]
--hist G prints the frame-size histogram for prologues that save exactly G callee-saved registers.
--min N hides groups with fewer than N prologues (default 1, so every group is shown).

For every function that begins with a stack allocation (stwu r1,-N(r1)), counts the callee-saved registers (r14..r31)
stored in the next 14 instructions, stopping at the first branch or call. Prints the 8-mod-16 frame rate for each count.
This is the same definition used for the game's own prologues (Turbo.rpx), so the two tables can be compared directly.
"""
import os
import re
import subprocess
import sys
from collections import defaultdict

LINE = re.compile(r'^\s*[0-9a-f]+:\t[0-9a-f ]+\t(\S+)\s*(.*)$')
FRAME = re.compile(r'stwu\s+r1,-(\d+)\(r1\)')
SAVE = re.compile(r'^stw\s+r(\d+),\s*-?\d+\(r1\)')
STMW = re.compile(r'^stmw\s+r(\d+),')


def functions(text):
    cur = None
    for line in text.splitlines():
        if re.match(r'^[0-9a-f]+ <.*>:$', line):
            if cur:
                yield cur
            cur = []
            continue
        m = LINE.match(line)
        if m and cur is not None:
            cur.append((m.group(1), m.group(2).strip()))
    if cur:
        yield cur


def classify(instrs):
    """Return (frame_size, saved_callee_regs) if the function starts with a stack allocation, else None."""
    frame = None
    start = None
    for idx, (mn, ops) in enumerate(instrs[:6]):
        m = FRAME.search(mn + ' ' + ops)
        if m:
            frame, start = int(m.group(1)), idx
            break
    if frame is None:
        return None
    saved = 0
    for mn, ops in instrs[start + 1:start + 15]:
        if mn.startswith('b'):        # first branch or call ends the prologue
            break
        s = SAVE.match(mn + ' ' + ops)
        if s and 14 <= int(s.group(1)) <= 31:
            saved += 1
        t = STMW.match(mn + ' ' + ops)
        if t:
            saved += 32 - int(t.group(1))
    return frame, saved


def main():
    args = sys.argv[1:]
    objdump = 'powerpc-eabi-objdump'
    min_n = 1
    if '--min' in args:
        i = args.index('--min')
        min_n = int(args[i + 1])
        del args[i:i + 2]
    hist_group = None
    if '--hist' in args:
        i = args.index('--hist')
        hist_group = int(args[i + 1])
        del args[i:i + 2]
    if '--objdump' in args:
        i = args.index('--objdump')
        objdump = args[i + 1]
        del args[i:i + 2]
    files = []
    for a in args:
        if os.path.isdir(a):
            files += [os.path.join(a, f) for f in sorted(os.listdir(a)) if f.endswith('.o')]
        else:
            files.append(a)
    rows = defaultdict(lambda: [0, 0])
    frames_for = defaultdict(lambda: defaultdict(int))
    total = 0
    for path in files:
        out = subprocess.run([objdump, '-d', path], capture_output=True, text=True).stdout
        for instrs in functions(out):
            r = classify(instrs)
            if r is None:
                continue
            frame, saved = r
            if hist_group is not None and saved == hist_group:
                frames_for[saved][frame] += 1
            rows[saved][0] += 1
            if frame % 16 == 8:
                rows[saved][1] += 1
            total += 1
    print(f'files={len(files)}  prologues={total}')
    print('saved callee regs | prologues | 8 mod 16 | share')
    for s in sorted(rows):
        t, e = rows[s]
        if t >= min_n:
            print(f'{s:17d} | {t:9d} | {e:8d} | {100 * e / t:5.1f}%')
    tot = sum(v[0] for v in rows.values())
    e8 = sum(v[1] for v in rows.values())
    print(f'total prologues {tot}, 8 mod 16 {e8} ({100 * e8 / max(tot, 1):.1f}%)')
    if hist_group is not None:
        print(f'frame sizes for prologues saving {hist_group} registers:')
        for size in sorted(frames_for[hist_group]):
            print(f'  frame {size:4d}  ({size % 16} mod 16)  {frames_for[hist_group][size]}')


if __name__ == '__main__':
    sys.exit(main())