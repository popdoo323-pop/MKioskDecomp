# Converted from the disassembly of 0x0202a228 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_0202a228
Batch_0202a228:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    lis     r4,4120
    stw     r0,20(r1)
    lwz     r4,-13080(r4)
    lwz     r3,80(r31)
    bl      ext_02008eb0
    lis     r12,4120
    lwz     r12,-13084(r12)
    add     r0,r3,r12
    stw     r0,288(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
