# Converted from the disassembly of 0x02038e88 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_02038e88
Batch_02038e88:
    lbz     r0,548(r3)
    mr      r5,r4
    cmpwi   r0,0
    beqlr-
    li      r4,13
    b       ext_02038dd8
