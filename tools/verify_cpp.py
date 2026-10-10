#!/usr/bin/env python3
"""Verify the C++ matches in symbols/cpp_matches.csv against the original binary.

usage: GHS_CXX="C:\\Nintendo\\GHS\\multi5327\\cxppc.exe" python tools/verify_cpp.py --orig orig/Turbo.rpx

Each row names a source file, the compiler flags and the function's address and size. Every name in symbols/externs.csv
is passed to the linker as a fixed address. Rows are skipped (not failed) when GHS_CXX is not set, so the check can run
on machines without the compiler. Linking needs POWERPC_LD (or powerpc-eabi-ld on PATH).
"""
import argparse
import csv
import os
import shlex
import subprocess
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')


def read_externs():
    out = []
    with open(os.path.join(ROOT, 'symbols', 'externs.csv'), newline='') as f:
        for row in csv.DictReader(f):
            out += ['--define', f"{row['name']}={row['address']}"]
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--orig', required=True)
    a = ap.parse_args()
    cxx = os.environ.get('GHS_CXX')
    rows = list(csv.DictReader(open(os.path.join(ROOT, 'symbols', 'cpp_matches.csv'), newline='')))
    if not cxx:
        print('SKIP: GHS_CXX is not set. Point it at cxppc.exe to verify the C++ matches.')
        for r in rows:
            print(f"SKIP {r['name']:32s} {r['address']} {r['size']} bytes")
        return 0
    defines = read_externs()
    failed = 0
    for r in rows:
        if r['status'] != 'matched':
            print(f"SKIP {r['name']:32s} status {r['status']}")
            continue
        cmd = [sys.executable, os.path.join(ROOT, 'tools', 'bytematch.py'),
               '--orig', a.orig, '--address', r['address'], '--size', r['size'],
               '--source', os.path.join(ROOT, r['source']), '--cc', cxx,
               '--cflags', r['cflags'], '--incdir', os.path.join(ROOT, 'include')] + defines
        res = subprocess.run(cmd, capture_output=True, text=True)
        if res.returncode == 0 and 'MATCH' in res.stdout.splitlines()[-1]:
            print(f"OK   {r['name']:32s} {r['address']} {r['size']} bytes")
        else:
            failed += 1
            print(f"FAIL {r['name']:32s} {r['address']}")
            print(res.stdout[-600:] + res.stderr[-300:])
    print(f"cpp matched rows: {sum(1 for r in rows if r['status']=='matched')}  failed: {failed}")
    return 1 if failed else 0


if __name__ == '__main__':
    sys.exit(main())
