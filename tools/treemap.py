#!/usr/bin/env python3
"""Progress visuals for the README: a treemap, two badges, and the matching README block.

Units come from symbols/units.csv (name,start,end, hex addresses, inclusive). If the file is missing, 64 KB
blocks of .text are used as placeholders. Tile area is proportional to unit size, as in decomp.dev.

Colours (same as decomp.dev):
  green  = 100% of the unit's bytes are matched
  blue   = in progress: some bytes decompiled or matched, not 100% matched (the percentage is in the tooltip)
  grey   = not started
"""
import csv
import html
import os

GREEN, BLUE, GREY, BG = '#2ecc40', '#0074d9', '#3a3f47', '#161a1f'
TEXT_START, TEXT_SIZE = 0x02000020, 10132008
BLOCK = 0x10000
COLS, TILE_W, TILE_H, GAP, LEGEND_H, WIDTH = 40, 22, 22, 2, 24, 960


def load_units(root):
    path = os.path.join(root, 'symbols', 'units.csv')
    if os.path.exists(path):
        with open(path, newline='') as fh:
            return [(r['name'], int(r['start'], 16), int(r['end'], 16)) for r in csv.DictReader(fh)]
    units = []
    for i in range((TEXT_SIZE + BLOCK - 1) // BLOCK):
        start = TEXT_START + i * BLOCK
        end = min(start + BLOCK, TEXT_START + TEXT_SIZE) - 1
        units.append((f'block_0x{start:08x}', start, end))
    return units


def load_matches(root):
    rows = []
    with open(os.path.join(root, 'symbols', 'matches.csv'), newline='') as fh:
        for r in csv.DictReader(fh):
            rows.append((int(r['address'], 16), int(r['size']), r['status'].strip()))
    return rows


def unit_status(units, matches):
    """Per unit: (name, start, end, size, matched_bytes, decompiled_bytes)."""
    out = []
    for name, start, end in units:
        size = end - start + 1
        matched = sum(sz for a, sz, st in matches if st == 'matched' and start <= a <= end)
        decomp = sum(sz for a, sz, st in matches if st in ('matched', 'decompiled') and start <= a <= end)
        out.append((name, start, end, size, matched, decomp))
    return out


def colour(size, matched, decomp):
    if size and matched >= size:
        return GREEN
    if decomp > 0:
        return BLUE
    return GREY


def _worst(row, side):
    s = sum(row)
    return max(max(side * side * r / (s * s), (s * s) / (side * side * r)) for r in row)


def squarify(areas, x, y, w, h):
    """Squarified treemap layout. areas must be sorted descending and sum to w*h. Returns rects in input order."""
    out = []
    rest = list(areas)
    while rest:
        side = min(w, h)
        row = [rest.pop(0)]
        while rest and _worst(row + [rest[0]], side) <= _worst(row, side):
            row.append(rest.pop(0))
        s = sum(row)
        if w >= h:
            rw = s / h
            yy = y
            for a in row:
                rh = a / rw
                out.append((x, yy, rw, rh))
                yy += rh
            x += rw
            w -= rw
        else:
            rh = s / w
            xx = x
            for a in row:
                rw = a / rh
                out.append((xx, y, rw, rh))
                xx += rw
            y += rh
            h -= rh
    return out


def treemap_svg(stats, path, height=420):
    sized = [s for s in stats if s[3] > 0]
    total = sum(s[3] for s in sized)
    order = sorted(range(len(sized)), key=lambda i: -sized[i][3])
    areas = [sized[i][3] / total * WIDTH * height for i in order]
    rects = squarify(areas, 0, 0, WIDTH, height)
    parts = [f'<svg xmlns="http://www.w3.org/2000/svg" width="{WIDTH}" height="{height + LEGEND_H}" '
             f'viewBox="0 0 {WIDTH} {height + LEGEND_H}">',
             f'<rect width="{WIDTH}" height="{height + LEGEND_H}" fill="{BG}"/>']
    for pos, (x, y, w, h) in zip(order, rects):
        name, start, end, size, matched, decomp = sized[pos]
        pct = 100.0 * matched / size
        tip = html.escape(f'{name} | {size:,} bytes | {pct:.4f}% matched | 0x{start:08x}-0x{end:08x}')
        parts.append(f'<rect x="{x + 1:.1f}" y="{y + 1:.1f}" width="{max(w - 2, 0):.1f}" '
                     f'height="{max(h - 2, 0):.1f}" fill="{colour(size, matched, decomp)}" stroke="{BG}">'
                     f'<title>{tip}</title></rect>')
    ly = height + 6
    lx = 6
    for label, col in (('100% matched', GREEN), ('in progress', BLUE), ('not started', GREY)):
        parts.append(f'<rect x="{lx}" y="{ly}" width="12" height="12" rx="2" fill="{col}"/>')
        parts.append(f'<text x="{lx + 18}" y="{ly + 10}" font-family="sans-serif" font-size="12" fill="#c9d1d9">'
                     f'{label}</text>')
        lx += 130
    parts.append('</svg>')
    with open(path, 'w') as fh:
        fh.write('\n'.join(parts) + '\n')


def badge_svg(label, value, colour_hex):
    """A shields.io-style badge: grey label on the left, coloured value on the right."""
    lw = 6 * len(label) + 14
    vw = 6 * len(value) + 14
    w = lw + vw
    return (f'<svg xmlns="http://www.w3.org/2000/svg" width="{w}" height="20">'
            f'<linearGradient id="g" x2="0" y2="100%"><stop offset="0" stop-color="#bbb" stop-opacity=".1"/>'
            f'<stop offset="1" stop-opacity=".1"/></linearGradient>'
            f'<rect rx="3" width="{w}" height="20" fill="#555"/>'
            f'<rect rx="3" x="{lw}" width="{vw}" height="20" fill="{colour_hex}"/>'
            f'<rect rx="3" width="{w}" height="20" fill="url(#g)"/>'
            f'<g fill="#fff" font-family="Verdana,sans-serif" font-size="11" text-anchor="middle">'
            f'<text x="{lw / 2}" y="14">{html.escape(label)}</text>'
            f'<text x="{lw + vw / 2}" y="14">{html.escape(value)}</text></g></svg>')


def badge_line():
    """The Code and Data badges, for the top of the README."""
    return '![Code](docs/badges/code.svg) ![Data](docs/badges/data.svg)'


def build(root, ghidra_total):
    """Write the treemap and badges under docs/, and return the README block text."""
    units = load_units(root)
    stats = unit_status(units, load_matches(root))
    docs = os.path.join(root, 'docs')
    os.makedirs(os.path.join(docs, 'badges'), exist_ok=True)
    treemap_svg(stats, os.path.join(docs, 'treemap.svg'))

    code_total = sum(s[3] for s in stats)
    code_matched = sum(s[4] for s in stats)
    code_pct = 100.0 * code_matched / code_total if code_total else 0.0
    code_colour = GREEN if code_pct >= 100 else BLUE
    with open(os.path.join(docs, 'badges', 'code.svg'), 'w') as fh:
        fh.write(badge_svg('Code', f'{code_pct:.4f}%', code_colour))
    with open(os.path.join(docs, 'badges', 'data.svg'), 'w') as fh:
        fh.write(badge_svg('Data', 'not measured', '#9f9f9f'))

    done = sum(1 for s in stats if s[3] and s[4] >= s[3])
    with open(os.path.join(root, 'symbols', 'matches.csv'), newline='') as fh:
        matched_fn = sum(1 for r in csv.DictReader(fh) if r['status'].strip() == 'matched')

    lines = [
        '![Progress map](docs/treemap.svg)',
        '',
        f'**{code_pct:.4f}% matched** ({code_matched:,} of {code_total:,} bytes of code, '
        f'{matched_fn} of about {ghidra_total:,} functions)',
        '',
        '| Library | Code matched | Bytes | Functions | Units done |',
        '| --- | --- | --- | --- | --- |',
        f'| Game (Turbo.rpx `.text`) | {code_pct:.4f}% | {code_matched:,} / {code_total:,} | '
        f'{matched_fn:,} / {ghidra_total:,} | {done} / {len(stats)} |',
        '',
        'Code matched counts bytes of functions whose assembled bytes equal the original. Data is not measured yet.',
    ]
    return '\n'.join(lines)
