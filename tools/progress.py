#!/usr/bin/env python3
"""Progress report for the Turbo.rpx decompilation.

Reads the symbol tables in symbols/ and writes:
  symbols/function_status.csv   one row per known function, with flags for each stage
  docs/progress.md              summary table

Stages, in order:
  signed     a prototype is applied in Ghidra (see symbols/coreinit_signatures.json)
  aliased    the call-site alias is mapped in Ghidra (see docs/import_aliasing.md)
  documented the address, name and purpose are recorded in the repo notes
  matched    the function is rebuilt from source and byte-identical (none yet)

The denominator for functions is the total from Ghidra's auto-analysis (--ghidra-total). It is not a count of
real function boundaries, so the percentage is only a rough measure.

usage: python tools/progress.py [--ghidra-total N]
"""
import argparse
import csv
import json
import os
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
SYM = os.path.join(ROOT, 'symbols')
DOCS = os.path.join(ROOT, 'docs')

# Names whose alias was mapped in Ghidra. Source: docs/ghidra_changelog.md.
ALIASED = {'OSCreateThread', 'OSSetThreadName', 'OSSetThreadAffinity', 'OSResumeThread', 'memcpy', 'OSBlockMove'}


def is_code_address(addr):
    return 0x02000000 <= addr < 0x02A00000


def read_imports():
    rows = {}
    with open(os.path.join(SYM, 'imports.csv'), newline='') as fh:
        for r in csv.DictReader(fh):
            addr = int(r['address'], 16)
            rows[r['name']] = dict(name=r['name'], address=addr, kind='import_' + r['kind'], library=r['library'])
    return rows


def read_documented():
    docs = {}
    for fname in ('coin_functions.csv', 'tire_audio_functions.csv'):
        with open(os.path.join(SYM, fname), newline='') as fh:
            for r in csv.DictReader(fh):
                addr = int(r['address'], 16)
                if is_code_address(addr):
                    docs[addr] = dict(name=r['proposed_name'], address=addr, kind='game_func', library='')
    return docs


FALLBACK_TEXT_BYTES = 10132008  # .text size from docs/binary_info.md


def text_size():
    """Size of .text in bytes, read from orig/Turbo.rpx when present."""
    orig = os.path.join(ROOT, 'orig', 'Turbo.rpx')
    if os.path.exists(orig):
        sys.path.insert(0, os.path.join(ROOT, 'tools'))
        import rpxlib
        f = rpxlib.load(orig)
        return next(s.mem_size for s in f.sections if s.name == '.text')
    return FALLBACK_TEXT_BYTES


def read_matches():
    """Rows from symbols/matches.csv that count as code: (name, size, status)."""
    path = os.path.join(SYM, 'matches.csv')
    rows = []
    if os.path.exists(path):
        with open(path, newline='') as fh:
            for m in csv.DictReader(fh):
                rows.append((m['name'], int(m['size']), m['status'].strip()))
    return rows


def readme_block(matches, text_bytes, ghidra_total):
    decompiled = sum(sz for _, sz, st in matches if st in ('matched', 'decompiled'))
    matched = sum(sz for _, sz, st in matches if st == 'matched')
    n_matched = sum(1 for _, _, st in matches if st == 'matched')

    def pct(n):
        return f'{100.0 * n / text_bytes:.4f}%'

    lines = [
        f'**{pct(matched)} matched** ({matched:,} of {text_bytes:,} bytes of code, '
        f'{n_matched} of about {ghidra_total:,} functions)',
        '',
        '| Library | Decompiled | Matched | Linked | Bytes (decompiled / matched / total) |',
        '| --- | --- | --- | --- | --- |',
        f'| Game (Turbo.rpx `.text`) | {pct(decompiled)} | {pct(matched)} | not measured | '
        f'{decompiled:,} / {matched:,} / {text_bytes:,} |',
        '',
        'Decompiled counts functions recorded in symbols/matches.csv with status matched or decompiled. Matched counts '
        'functions whose assembled bytes equal the original. Linked needs a full build, which does not exist yet.',
    ]
    return '\n'.join(lines)


def update_readme(block):
    """Replace the text between the progress markers in README.md."""
    path = os.path.join(ROOT, 'README.md')
    if not os.path.exists(path):
        return False
    s = open(path).read()
    start, end = '<!-- progress:start -->', '<!-- progress:end -->'
    if start not in s or end not in s:
        return False
    head, rest = s.split(start, 1)
    _, tail = rest.split(end, 1)
    open(path, 'w').write(head + start + '\n' + block + '\n' + end + tail)
    return True


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--ghidra-total', type=int, default=32782, help='function count reported by Ghidra')
    args = ap.parse_args()

    imports = read_imports()
    with open(os.path.join(SYM, 'coreinit_signatures.json')) as fh:
        signed_names = {f['name'] for f in json.load(fh)['functions']}
    documented = read_documented()

    rows = []
    for r in imports.values():
        rows.append(dict(r, signed=int(r['name'] in signed_names), aliased=int(r['name'] in ALIASED),
                         documented=0, matched=0))
    for addr, r in sorted(documented.items()):
        rows.append(dict(r, signed=0, aliased=0, documented=1, matched=0))

    # byte-identical matches recorded in symbols/matches.csv
    match_path = os.path.join(SYM, 'matches.csv')
    if os.path.exists(match_path):
        with open(match_path, newline='') as fh:
            for m in csv.DictReader(fh):
                addr = int(m['address'], 16)
                row = next((r for r in rows if r['address'] == addr), None)
                if row is None:
                    row = dict(name=m['name'], address=addr, kind='game_func', library='',
                               signed=0, aliased=0, documented=0, matched=0)
                    rows.append(row)
                if m.get('status', '').strip() == 'matched':
                    row['matched'] = 1
                else:
                    row['trivial'] = 1

    with open(os.path.join(SYM, 'function_status.csv'), 'w', newline='') as fh:
        w = csv.writer(fh)
        w.writerow(['address', 'name', 'kind', 'library', 'signed', 'aliased', 'documented', 'matched'])
        for r in sorted(rows, key=lambda x: (x['kind'], x['address'])):
            w.writerow([f"0x{r['address']:08x}", r['name'], r['kind'], r['library'],
                        r['signed'], r['aliased'], r['documented'], r['matched']])

    imp = [r for r in rows if r['kind'].startswith('import_')]
    imp_funcs = [r for r in imp if r['kind'] == 'import_func']
    game = [r for r in rows if r['kind'] == 'game_func']
    total = args.ghidra_total

    def pct(n, d):
        return f'{100.0 * n / d:.1f}%' if d else 'n/a'

    lines = [
        '# Progress report', '',
        'Generated by `tools/progress.py`. Do not edit by hand; edit the symbol tables and re-run.', '',
        '| Stage | Count | Of | Share |', '|---|---|---|---|',
        f'| Import symbols (all) | {len(imp)} | {len(imp)} | 100% |',
        f'| Import functions signed in Ghidra | {sum(r["signed"] for r in imp_funcs)} | {len(imp_funcs)} | '
        f'{pct(sum(r["signed"] for r in imp_funcs), len(imp_funcs))} |',
        f'| Import functions aliased in Ghidra | {sum(r["aliased"] for r in imp_funcs)} | {len(imp_funcs)} | '
        f'{pct(sum(r["aliased"] for r in imp_funcs), len(imp_funcs))} |',
        f'| Game functions documented | {len(game)} | {total} (Ghidra total) | {pct(len(game), total)} |',
        f'| Functions matched (byte-identical) | {sum(r["matched"] for r in rows)} | {total} | '
        f'{pct(sum(r["matched"] for r in rows), total)} |',
        '', f'Trivial pipeline tests (not counted as matches): {sum(r.get("trivial", 0) for r in rows)}.', '',
        'The Ghidra total is auto-analysis output. It is an approximate denominator.', '',
        'Matching needs the original compiler and flags. Compiler: not identified (see docs/compiler_notes.md).', '',
    ]
    with open(os.path.join(DOCS, 'progress.md'), 'w') as fh:
        fh.write('\n'.join(lines))
    block = readme_block(read_matches(), text_size(), total)
    updated = update_readme(block)
    print('\n'.join(lines))
    print(f'wrote {len(rows)} rows to symbols/function_status.csv')
    print('README progress block updated' if updated else 'README markers not found; block not written')


if __name__ == '__main__':
    main()
