# Converted from the disassembly of 0x0200e3e4 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_0200e3e4
Batch_0200e3e4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r12,100(r3)
    lwz     r0,292(r12)
    mtctr   r0
    mr      r31,r3
    bctrl
    stw     r3,8(r1)
    lwz     r3,104(r31)
    stw     r4,12(r1)
    addi    r4,r1,8
    bl      ext_0200b2e4
    li      r0,3
    stw     r0,0(r3)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
