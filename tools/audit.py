#!/usr/bin/env python3
"""Audit the claims in this repository against the files on disk.

Each check prints PASS or FAIL. The exit status is 0 only when every check passes.
Checks that need orig/Turbo.rpx are skipped with a note when the file is absent.
"""
import csv
import hashlib
import os
import re
import subprocess
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
results = []


def check(name, ok, detail=''):
    results.append(ok)
    print(f"{'PASS' if ok else 'FAIL'}  {name}" + (f'  ({detail})' if detail else ''))


def read(path):
    with open(os.path.join(ROOT, path), encoding='utf-8', errors='replace') as fh:
        return fh.read()


# 1. The reference hash of the dump matches the file, if the dump is present.
orig = os.path.join(ROOT, 'orig', 'Turbo.rpx')
if os.path.exists(orig):
    h = hashlib.sha256(open(orig, 'rb').read()).hexdigest()
    ref = re.search(r'([0-9a-f]{64})\s+\d+\s+Turbo\.rpx', read('config/hashes.txt'))
    check('orig/Turbo.rpx matches config/hashes.txt', bool(ref) and ref.group(1) == h)
else:
    print('SKIP  orig/Turbo.rpx hash (no dump present)')

# 2. Every matched row has a source file that exists, and only known statuses are used.
rows = list(csv.DictReader(open(os.path.join(ROOT, 'symbols', 'matches.csv'), newline='')))
statuses = {r['status'].strip() for r in rows}
check('matches.csv statuses are matched or trivial', statuses <= {'matched', 'trivial'}, ', '.join(sorted(statuses)))
missing = [r['source'] for r in rows if not os.path.exists(os.path.join(ROOT, r['source']))]
check('every matches.csv source file exists', not missing, ', '.join(missing))

# 3. Hand-written C++ never claims to be matched.
banner = 'HAND-WRITTEN, NOT YET MATCHED'
claims = []
for dirpath, _, files in os.walk(os.path.join(ROOT, 'include')):
    for f in files:
        if f.endswith('.hpp'):
            text = open(os.path.join(dirpath, f), encoding='utf-8', errors='replace').read()
            if re.search(r'\bMATCHED\b(?!.*NOT)', text[:400]) and banner not in text[:400]:
                claims.append(f)
check('hand-written headers do not claim a match', not claims, ', '.join(claims))

# 4. The README progress block agrees with the progress report.
readme = read('README.md')
block = re.search(r'<!-- progress:start -->(.*?)<!-- progress:end -->', readme, re.S)
report = read('docs/progress.md')
matched_report = re.search(r'Functions matched \(byte-identical\) \| (\d+)', report)
if block and matched_report:
    m = re.search(r'\((\d[\d,]*) of [\d,]+ bytes of code, (\d+) of about', block.group(1))
    ok = bool(m) and m.group(2) == matched_report.group(1)
    check('README progress block agrees with docs/progress.md', ok,
          f'README says {m.group(2) if m else "?"}, report says {matched_report.group(1)}')
else:
    check('README progress block agrees with docs/progress.md', False, 'markers or report missing')

# 5. No game data is tracked by git (only checked when this is a git work tree).
try:
    tracked = subprocess.run(['git', '-C', ROOT, 'ls-files'], capture_output=True, text=True, check=True).stdout.split()
    banned = [t for t in tracked if re.search(r'\.(rpx|rpl|szs|bfres|bfsar|bars|tga|gzf|zip)$', t, re.I)
              or t.startswith(('orig/', 'private/'))
              and not t.endswith('README.md')]
    check('no game data or private files are tracked by git', not banned, ', '.join(banned))
except (subprocess.CalledProcessError, FileNotFoundError):
    print('SKIP  git tracked-file check (not a git work tree)')

# 6. The symbol table covers all imports.
imports = list(csv.DictReader(open(os.path.join(ROOT, 'symbols', 'imports.csv'), newline='')))
status_rows = list(csv.DictReader(open(os.path.join(ROOT, 'symbols', 'function_status.csv'), newline='')))
check('function_status.csv includes every import', sum(1 for r in status_rows if r['kind'].startswith('import_')) == len(imports),
      f"{len(imports)} imports")

print(f"\n{sum(results)} of {len(results)} checks passed")
sys.exit(0 if all(results) else 1)
