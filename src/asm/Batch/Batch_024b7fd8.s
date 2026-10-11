# Converted from the disassembly of 0x024b7fd8 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_024b7fd8
Batch_024b7fd8:
    lbz     r12,2313(r3)
    cmpwi   r12,0
    beq-    L024b7ff8
    li      r0,0
    stb     r0,2313(r3)
    lis     r3,4122
    lwz     r3,-25208(r3)
    blr
L024b7ff8:
    li      r3,0
    blr
