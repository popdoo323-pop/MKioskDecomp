# Converted from the disassembly of 0x0203959c (24 bytes). Name is a placeholder.
    .text
    .globl Batch_0203959c
Batch_0203959c:
    mr      r3,r4
    addi    r0,r3,-1
    cmplwi  r0,96
    blt-    L020395b0
    li      r3,96
L020395b0:
    b       ext_029adc78
