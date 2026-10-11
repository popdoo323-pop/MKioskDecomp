# Converted from the disassembly of 0x02027608 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_02027608
Batch_02027608:
    lwz     r0,24(r3)
    cmpw    r0,r4
    bge-    L02027618
    mr      r0,r4
L02027618:
    stw     r0,28(r3)
    blr
