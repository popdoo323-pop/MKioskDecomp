# Converted from the disassembly of 0x020434d0 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_020434d0
Batch_020434d0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    lis     r12,4121
    stw     r0,28(r1)
    lwz     r12,30556(r12)
    lwz     r12,0(r12)
    lwz     r0,312(r12)
    lwz     r11,112(r3)
    stw     r0,12(r1)
    lwz     r12,12(r1)
    stw     r12,8(r1)
    lwz     r0,212(r11)
    mtctr   r0
    addi    r4,r1,8
    mr      r31,r3
    bctrl
    addi    r3,r31,212
    bl      ext_02411050
    lwz     r12,12(r1)
    lwz     r11,112(r31)
    stw     r12,8(r1)
    lwz     r0,220(r11)
    mtctr   r0
    mr      r3,r31
    addi    r4,r1,8
    bctrl
    lwz     r0,28(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
