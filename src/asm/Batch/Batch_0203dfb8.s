# Converted from the disassembly of 0x0203dfb8 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_0203dfb8
Batch_0203dfb8:
    lbz     r0,220(r3)
    cmpwi   r0,0
    beqlr-
    li      r5,5
    li      r4,2
    b       ext_0203ace4
