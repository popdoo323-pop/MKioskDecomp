# Converted from the disassembly of 0x020188a8 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_020188a8
Batch_020188a8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020171cc
    lis     r4,4120
    lwz     r3,88(r31)
    lwz     r4,-13992(r4)
    bl      ext_02008eb0
    stw     r3,160(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
