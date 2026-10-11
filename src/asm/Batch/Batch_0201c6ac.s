# Converted from the disassembly of 0x0201c6ac (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0201c6ac
Batch_0201c6ac:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,4(r3)
    lwz     r0,20(r12)
    mtctr   r0
    mr      r31,r3
    bctrl
    lwz     r0,20(r1)
    lwz     r3,0(r31)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
