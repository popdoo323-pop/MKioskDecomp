"""Shared reader for Cafe OS RPX and RPL files.

These are big-endian ELF32 files whose section payloads are zlib-compressed when the SHF_DEFLATE flag is set.
Standard library only.
"""
import struct
import zlib
from dataclasses import dataclass

SHT_NOBITS = 8
SHT_CAFE_CRC = 0x80000003   # per-section CRC32 table, one big-endian u32 per section index
SHF_DEFLATE = 0x08000000    # payload = u32 uncompressed size + zlib stream


@dataclass
class Section:
    index: int
    name: str
    type: int
    flags: int
    addr: int
    offset: int
    size: int           # size stored in the file
    data: bytes         # payload after decompression (empty for NOBITS)

    @property
    def compressed(self):
        return bool(self.flags & SHF_DEFLATE) and self.type != SHT_NOBITS

    @property
    def mem_size(self):
        return self.size if self.type == SHT_NOBITS else len(self.data)


@dataclass
class RpxFile:
    path: str
    raw: bytes
    entry: int
    sections: list


def _payload(raw, typ, flags, off, size):
    if typ == SHT_NOBITS:
        return b''
    blob = raw[off:off + size]
    if flags & SHF_DEFLATE:
        return zlib.decompress(blob[4:])
    return blob


def load(path):
    with open(path, 'rb') as fh:
        raw = fh.read()
    if raw[:4] != b'\x7fELF':
        raise ValueError(f'{path}: not an ELF file')
    hdr = struct.unpack('>16sHHIIIIIHHHHHH', raw[:52])
    entry, shoff, shentsize, shnum, shstrndx = hdr[4], hdr[6], hdr[11], hdr[12], hdr[13]
    heads = []
    for i in range(shnum):
        o = shoff + i * shentsize
        heads.append(struct.unpack('>IIIIIIIIII', raw[o:o + 40]))
    # header fields: name, type, flags, addr, offset, size, link, info, align, entsize

    def payload_of(h):
        return _payload(raw, h[1], h[2], h[4], h[5])

    shstr = payload_of(heads[shstrndx])
    sections = []
    for i, h in enumerate(heads):
        name_off, typ, flags, addr, off, size = h[:6]
        name = shstr[name_off:shstr.index(b'\0', name_off)].decode('ascii', 'replace')
        sections.append(Section(i, name, typ, flags, addr, off, size, payload_of(h)))
    return RpxFile(path, raw, entry, sections)
