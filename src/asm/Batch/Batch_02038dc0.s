# Converted from the disassembly of 0x02038dc0 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_02038dc0
Batch_02038dc0:
    lbz     r0,548(r3)
    mr      r5,r4
    cmpwi   r0,0
    beqlr-
    li      r4,13
    b       ext_02038cfc
