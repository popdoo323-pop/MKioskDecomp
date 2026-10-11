# Converted from the disassembly of 0x024bc780 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc780
Batch_024bc780:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    stw     r30,8(r1)
    mr      r5,r31
    li      r4,1
    mr      r30,r3
    stw     r0,20(r1)
    bl      ext_02484e4c
    lbz     r0,32(r31)
    lwz     r12,84(r30)
    cmpwi   r0,0
    mr      r3,r30
    bne-    L024bc7e0
    lwz     r0,220(r12)
    mtctr   r0
    bctrl
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024bc7e0:
    lwz     r0,236(r12)
    mtctr   r0
    bctrl
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
