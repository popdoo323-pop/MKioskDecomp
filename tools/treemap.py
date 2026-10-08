#!/usr/bin/env python3
"""Write docs/treemap.svg: a progress map of the game's .text, one tile per block.

Colours follow decomp.dev: green = matched, blue = decompiled (has a source entry but not matched),
dark = nothing yet. Each tile's tooltip gives its address range and byte counts.

Tiles are fixed 64 KB address blocks for now. When translation units exist, pass units instead.
"""
import csv
import html
import os

BLOCK = 0x10000  # 64 KB
COLS = 40
TILE = 22
GAP = 2
BG = '#161a1f'
COLOUR = {'matched': '#2ecc40', 'decompiled': '#0074d9', 'none': '#3a3f47'}


def blocks_from_matches(matches, text_start, text_size):
    """Return a list of (start, end, matched_bytes, decompiled_bytes) per block."""
    n = (text_size + BLOCK - 1) // BLOCK
    matched = [0] * n
    decompiled = [0] * n
    for addr, size, status in matches:
        if not (text_start <= addr < text_start + text_size):
            continue
        i = (addr - text_start) // BLOCK
        if status == 'matched':
            matched[i] += size
        if status in ('matched', 'decompiled'):
            decompiled[i] += size
    out = []
    for i in range(n):
        start = text_start + i * BLOCK
        end = min(start + BLOCK, text_start + text_size) - 1
        out.append((start, end, matched[i], decompiled[i]))
    return out


def write_svg(path, blocks):
    rows = (len(blocks) + COLS - 1) // COLS
    width = COLS * (TILE + GAP) + GAP
    legend_h = 24
    height = rows * (TILE + GAP) + GAP + legend_h
    parts = [f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" '
             f'viewBox="0 0 {width} {height}">', f'<rect width="{width}" height="{height}" fill="{BG}"/>']
    for i, (start, end, m, d) in enumerate(blocks):
        size = end - start + 1
        if m > 0:
            state = 'matched'
        elif d > 0:
            state = 'decompiled'
        else:
            state = 'none'
        x = GAP + (i % COLS) * (TILE + GAP)
        y = GAP + (i // COLS) * (TILE + GAP)
        tip = html.escape(f'0x{start:08x}-0x{end:08x} | matched {m:,} of {size:,} bytes | '
                          f'decompiled {d:,} bytes')
        parts.append(f'<rect x="{x}" y="{y}" width="{TILE}" height="{TILE}" rx="2" '
                     f'fill="{COLOUR[state]}"><title>{tip}</title></rect>')
    ly = height - legend_h + 6
    lx = GAP
    for label, key in (('matched', 'matched'), ('decompiled', 'decompiled'), ('not started', 'none')):
        parts.append(f'<rect x="{lx}" y="{ly}" width="12" height="12" rx="2" fill="{COLOUR[key]}"/>')
        parts.append(f'<text x="{lx + 18}" y="{ly + 10}" font-family="sans-serif" font-size="12" '
                     f'fill="#c9d1d9">{label}</text>')
        lx += 110
    parts.append('</svg>')
    with open(path, 'w') as fh:
        fh.write('\n'.join(parts) + '\n')
    return width, height


if __name__ == '__main__':
    import sys
    here = os.path.dirname(os.path.abspath(__file__))
    root = os.path.join(here, '..')
    matches = []
    with open(os.path.join(root, 'symbols', 'matches.csv'), newline='') as fh:
        for r in csv.DictReader(fh):
            matches.append((int(r['address'], 16), int(r['size']), r['status'].strip()))
    text_start, text_size = 0x02000020, 10132008
    blocks = blocks_from_matches(matches, text_start, text_size)
    w, h = write_svg(os.path.join(root, 'docs', 'treemap.svg'), blocks)
    print(f'wrote docs/treemap.svg ({len(blocks)} tiles, {w}x{h})')
