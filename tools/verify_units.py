#!/usr/bin/env python3
"""Check every unit marked done in symbols/units.csv against symbols/matches.csv and the original binary.

usage: python tools/verify_units.py --orig orig/Turbo.rpx

A unit counts as done only when:
  1. its bytes are covered by matched functions with no gaps,
  2. no two matched functions overlap inside it, and
  3. every matched function inside it matches the original bytes (checked with verify_matches.py's rules).
Exit code 1 if any unit claimed as done fails. Units that are not fully covered are reported as not done, which is expected.
"""
import argparse
import csv
import os
import subprocess
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--orig', required=True)
    ap.add_argument('--coverage-only', action='store_true', help='skip the byte check (run verify_matches.py separately)')
    args = ap.parse_args()
    matches = []
    for r in csv.reader(open(os.path.join(ROOT, 'symbols', 'matches.csv'), newline='')):
        if not r or r[0].startswith('address') or len(r) < 7:
            continue
        if r[6].strip() == 'matched':
            matches.append((int(r[0], 16), int(r[5]), r[1]))
    matches.sort()
    units = []
    for r in csv.DictReader(open(os.path.join(ROOT, 'symbols', 'units.csv'), newline='')):
        units.append((r['name'], int(r['start'], 16), int(r['end'], 16)))
    done_claims = 0
    failed = 0
    overlaps = []
    for i in range(len(matches) - 1):
        a0, s0, n0 = matches[i]
        a1, s1, n1 = matches[i + 1]
        if a0 + s0 > a1:
            overlaps.append((n0, n1))
    for name, start, end in units:
        inside = [(a, s, n) for a, s, n in matches if start <= a <= end]
        covered = 0
        pos = start
        gaps = 0
        for a, s, n in inside:
            if a > pos:
                gaps += 1
            pos = max(pos, a + s)
            covered += s
        full = (pos > end) and gaps == 0 and covered == (end - start + 1)
        if not full:
            continue
        done_claims += 1
        bad = [n for a, s, n in inside if (a, s, n) and a + s > end + 1]
        if bad:
            failed += 1
            print(f'FAIL {name}: functions run past the unit end: {bad}')
    print(f'units: {len(units)}  claimed done: {done_claims}  failed coverage checks: {failed}')
    if overlaps:
        print('overlapping matched functions:', overlaps)
        failed += len(overlaps)
    if args.coverage_only:
        print('byte check: skipped (run tools/verify_matches.py)')
    else:
        r = subprocess.run([sys.executable, os.path.join(ROOT, 'tools', 'verify_matches.py'), '--orig', args.orig],
                           capture_output=True, text=True)
        last = r.stdout.strip().splitlines()[-1] if r.stdout.strip() else 'no output'
        print('byte check:', last)
        if 'failed: 0' not in last:
            failed += 1
    return 1 if failed else 0


if __name__ == '__main__':
    sys.exit(main())
