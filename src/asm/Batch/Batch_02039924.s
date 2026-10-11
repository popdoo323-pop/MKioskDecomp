# Converted from the disassembly of 0x02039924 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_02039924
Batch_02039924:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02045a98
    lwz     r0,12(r1)
    lwz     r3,368(r3)
    mtlr    r0
    addi    r1,r1,8
    blr
