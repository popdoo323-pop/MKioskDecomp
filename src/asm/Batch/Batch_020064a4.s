# Converted from the disassembly of 0x020064a4 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_020064a4
Batch_020064a4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,68(r31)
    lwz     r12,0(r3)
    lwz     r0,28(r12)
    mtctr   r0
    bctrl
    lwz     r3,72(r31)
    lwz     r12,0(r3)
    lwz     r0,28(r12)
    mtctr   r0
    bctrl
    lwz     r3,76(r31)
    lwz     r12,0(r3)
    lwz     r12,28(r12)
    mtctr   r12
    bctrl
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
