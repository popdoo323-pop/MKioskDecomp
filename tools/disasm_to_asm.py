#!/usr/bin/env python3
"""Turn a PowerPC function from the game binary into GNU assembly that asmmatch.py can check.

usage: python tools/disasm_to_asm.py --orig orig/Turbo.rpx --address 0x024a216c --size 2112 \
           --name Driver_Register_024a216c --out src/asm/Game/Driver/Driver_Register_024a216c.s

Every branch target inside the function gets a local label. Every call to an address outside the function becomes an
external symbol, and the script prints the --define arguments that asmmatch.py needs for them. Written so the output is
checked by the byte comparison, not trusted.
"""
import argparse
import os
import re
import subprocess
import sys
import tempfile

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
sys.path.insert(0, os.path.join(ROOT, 'tools'))
import rpxlib  # noqa: E402

TARGET = re.compile(r'\b(b[a-z]*[-+]?|bl[a-z]*[-+]?|bdn[zt][a-z]*[-+]?)\s+0x([0-9a-f]+)$')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--orig', required=True)
    ap.add_argument('--address', required=True)
    ap.add_argument('--size', required=True, type=int)
    ap.add_argument('--name', required=True)
    ap.add_argument('--out', required=True)
    ap.add_argument('--objdump', default='powerpc-linux-gnu-objdump')
    a = ap.parse_args()
    addr = int(a.address, 16)
    text = next(s for s in rpxlib.load(a.orig).sections if s.name == '.text')
    off = addr - text.addr
    data = text.data[off:off + a.size]
    with tempfile.TemporaryDirectory() as tmp:
        raw = os.path.join(tmp, 'f.bin')
        open(raw, 'wb').write(data)
        out = subprocess.run([a.objdump, '-D', '-b', 'binary', '-m', 'powerpc:750', '-EB',
                              f'--adjust-vma=0x{addr:08x}', raw], capture_output=True, text=True).stdout
    lines = []
    for ln in out.splitlines():
        parts = ln.split('\t')
        if len(parts) >= 3 and re.match(r'^\s*[0-9a-f]+:$', parts[0] + ':' if not parts[0].endswith(':') else parts[0]):
            pc = int(parts[0].strip().rstrip(':'), 16)
            lines.append((pc, parts[2].strip()))
    inside = {pc for pc, _ in lines}
    labels = set()
    externals = {}
    body = []
    for pc, ins in lines:
        m = TARGET.search(ins)
        if m:
            tgt = int(m.group(2), 16)
            if tgt in inside and tgt != pc:
                labels.add(tgt)
                ins = ins[:m.start(2)-2] + f'L{tgt:08x}'
            elif tgt not in inside and ins.split()[0].startswith('bl'):
                externals[tgt] = f'ext_{tgt:08x}'
                ins = ins[:m.start(2)-2] + f'ext_{tgt:08x}'
        body.append((pc, ins))
    with open(a.out, 'w') as f:
        f.write(f'# Converted from the disassembly of 0x{addr:08x} ({a.size} bytes). Name is a placeholder.\n')
        f.write('    .text\n')
        f.write(f'    .globl {a.name}\n{a.name}:\n')
        for pc, ins in body:
            if pc in labels:
                f.write(f'L{pc:08x}:\n')
            f.write(f'    {ins}\n')
    defs = ' '.join(f'--define {n}=0x{t:08x}' for t, n in sorted(externals.items()))
    print('wrote', a.out, 'with', len(body), 'instructions,', len(labels), 'labels,', len(externals), 'external calls')
    print('defines:', defs)


if __name__ == '__main__':
    sys.exit(main())
