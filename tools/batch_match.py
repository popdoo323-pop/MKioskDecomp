#!/usr/bin/env python3
"""Batch-match functions from symbols/functions_ghidra.csv.

For each selected function: convert it to assembly with disasm_to_asm.py, check it with asmmatch.py, and record it in
symbols/matches.csv only if the bytes match. Failures go to symbols/batch_failures.csv with the reason.

usage:
  python tools/batch_match.py --orig orig/Turbo.rpx --limit 100 --min-size 16 --max-size 256
  python tools/batch_match.py --orig orig/Turbo.rpx --start 0x02100000 --end 0x02110000 --limit 200
  add --dry-run to list the selection without matching
"""
import argparse
import csv
import os
import re
import subprocess
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
TEXT_LO, TEXT_HI = 0x02000020, 0x029a9a48   # true .text end: base + 10132008 bytes (fixed 2026-10-10; was 0x024b2636)


def matched_addresses():
    done = set()
    p = os.path.join(ROOT, 'symbols', 'matches.csv')
    for r in csv.reader(open(p, newline='')):
        if r and not r[0].startswith('address') and len(r) >= 7 and r[6].strip() in ('matched', 'roundtrip'):
            done.add(int(r[0], 16))
    return done


def run(cmd):
    return subprocess.run(cmd, capture_output=True, text=True, cwd=ROOT)


def match_one(orig, addr, size, name):
    out = os.path.join('src', 'asm', 'Batch', f'{name}.s')
    os.makedirs(os.path.join(ROOT, 'src', 'asm', 'Batch'), exist_ok=True)
    conv = run([sys.executable, 'tools/disasm_to_asm.py', '--orig', orig, '--address', hex(addr),
                '--size', str(size), '--name', name, '--out', out])
    if conv.returncode != 0:
        return None, 'convert failed: ' + (conv.stderr or conv.stdout).strip()[-200:]
    defs = re.findall(r'--define (\S+)=(\S+)', conv.stdout)
    args = []
    for n, v in defs:
        args += ['--define', f'{n}={v}']
    chk = run([sys.executable, 'tools/asmmatch.py', '--orig', orig, '--address', hex(addr),
               '--size', str(size), '--source', out] + args)
    text = (chk.stdout + chk.stderr).strip()
    last = text.splitlines()[-1] if text else 'no output'
    if last == 'MATCH':
        return defs, None
    return None, last[:200]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--orig', required=True)
    ap.add_argument('--limit', type=int, default=50)
    ap.add_argument('--min-size', type=int, default=16)
    ap.add_argument('--max-size', type=int, default=256)
    ap.add_argument('--start', default=None)
    ap.add_argument('--end', default=None)
    ap.add_argument('--dry-run', action='store_true')
    a = ap.parse_args()
    lo = int(a.start, 16) if a.start else TEXT_LO
    hi = int(a.end, 16) if a.end else TEXT_HI
    done = matched_addresses()
    cands = []
    for r in csv.DictReader(open(os.path.join(ROOT, 'symbols', 'functions_ghidra.csv'), newline='')):
        addr = int(r['address'], 16)
        size = int(r['size'])
        if r['thunk'] == 'true' or addr in done or not (lo <= addr < hi):
            continue
        if not (a.min_size <= size <= a.max_size):
            continue
        cands.append((addr, size))
    cands.sort()
    selected = cands[:a.limit]
    print(f'candidates: {len(cands)}  selected: {len(selected)}')
    if a.dry_run:
        for addr, size in selected[:20]:
            print(f'  0x{addr:08x} {size}')
        return 0
    ok_rows, fail_rows = [], []
    for addr, size in selected:
        name = f'Batch_{addr:08x}'
        defs, why = match_one(a.orig, addr, size, name)
        if defs is not None:
            dstr = ' '.join(f'--define {n}={v}' for n, v in defs)
            ok_rows.append(f'0x{addr:08x},{name},src/asm/Batch/{name}.s,powerpc-linux-gnu-as 2.42 / ld 2.42,'
                           f'"-mbig -a32 -mregnames -mgekko; {dstr}",{size},roundtrip,'
                           f'"Converter round-trip from the Ghidra boundary list: assembly rebuilds the original bytes; not readable source."')
        else:
            fail_rows.append((f'0x{addr:08x}', size, why))
    if ok_rows:
        with open(os.path.join(ROOT, 'symbols', 'matches.csv'), 'a') as f:
            f.write('\n'.join(ok_rows) + '\n')
    fpath = os.path.join(ROOT, 'symbols', 'batch_failures.csv')
    with open(fpath, 'a', newline='') as f:
        w = csv.writer(f)
        if os.path.getsize(fpath) == 0:
            w.writerow(['address', 'size', 'reason'])
        for row in fail_rows:
            w.writerow(row)
    print(f'matched: {len(ok_rows)}  failed: {len(fail_rows)}  (failures in symbols/batch_failures.csv)')
    return 0


if __name__ == '__main__':
    sys.exit(main())
