#!/usr/bin/env python3
"""Independently re-verify every row marked matched in symbols/matches.csv.

For each matched row: re-assemble the source with the flags recorded in the row, link at the recorded address,
and compare the bytes with the original .text in orig/Turbo.rpx. This does not reuse the progress report's count.
Trivial rows are listed but not verified as matches.

usage: python tools/verify_matches.py [--orig orig/Turbo.rpx]
Exit status 0 when every matched row reproduces its bytes, 1 otherwise.
"""
import argparse
import csv
import os
import re
import subprocess
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
sys.path.insert(0, os.path.join(ROOT, 'tools'))
import asmmatch  # noqa: E402
import rpxlib  # noqa: E402


def defines_from(flags):
    return re.findall(r'(FUN_[0-9a-zA-Z_]+)=(0x[0-9a-fA-F]+)', flags)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--orig', default=os.path.join(ROOT, 'orig', 'Turbo.rpx'))
    args = ap.parse_args()
    if not os.path.exists(args.orig):
        print('orig/Turbo.rpx not present; nothing to verify against')
        return 1
    text = next(s for s in rpxlib.load(args.orig).sections if s.name == '.text')

    if asmmatch.find_tool('powerpc-linux-gnu-as', 'POWERPC_AS') is None:
        print('toolchain missing: cannot verify matches. Set POWERPC_AS to the full path of an assembler.')
        return asmmatch.EXIT_TOOLCHAIN_MISSING

    rows = list(csv.DictReader(open(os.path.join(ROOT, 'symbols', 'matches.csv'), newline='')))
    matched = [r for r in rows if r['status'].strip() == 'matched']
    trivial = [r for r in rows if r['status'].strip() == 'trivial']
    failed = []
    for r in matched:
        addr = int(r['address'], 16)
        size = int(r['size'])
        cmd = [sys.executable, os.path.join(ROOT, 'tools', 'asmmatch.py'),
               '--orig', args.orig, '--address', r['address'], '--size', str(size),
               '--source', os.path.join(ROOT, r['source'])]
        for name, val in defines_from(r['flags']):
            cmd += ['--define', f'{name}={val}']
        res = subprocess.run(cmd, capture_output=True, text=True)
        if res.returncode == asmmatch.EXIT_TOOLCHAIN_MISSING:
            print(res.stdout.strip())
            return asmmatch.EXIT_TOOLCHAIN_MISSING
        ok = res.returncode == 0 and 'MATCH' in res.stdout and 'DIFFERENT' not in res.stdout
        print(f"{'OK  ' if ok else 'FAIL'} {r['name']:<34} {r['address']} {size} bytes")
        if not ok:
            failed.append(r['name'])
            print(res.stdout + res.stderr)
    print(f"matched rows: {len(matched)}  verified: {len(matched) - len(failed)}  "
          f"failed: {len(failed)}  trivial (not counted): {len(trivial)}")
    return 0 if not failed else 1


if __name__ == '__main__':
    sys.exit(main())
