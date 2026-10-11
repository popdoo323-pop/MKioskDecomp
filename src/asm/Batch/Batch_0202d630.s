# Converted from the disassembly of 0x0202d630 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_0202d630
Batch_0202d630:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,0(r3)
    lwz     r0,124(r12)
    mtctr   r0
    mr      r31,r3
    bctrl
    mr      r3,r31
    bl      ext_0202d498
    lfs     f1,64(r31)
    li      r4,0
    lwz     r3,44(r31)
    bl      ext_02031530
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
