# Converted from the disassembly of 0x024bc6e4 (156 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc6e4
Batch_024bc6e4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r4
    stw     r30,16(r1)
    mr      r5,r31
    li      r4,0
    mr      r30,r3
    stw     r0,28(r1)
    bl      ext_02484e4c
    lbz     r0,32(r31)
    lwz     r9,84(r30)
    cmpwi   r0,0
    mr      r3,r30
    bne-    L024bc73c
    lwz     r0,212(r9)
    mtctr   r0
    bctrl
    lbz     r0,32(r31)
    cmpwi   r0,0
    beq-    L024bc754
    b       L024bc768
L024bc73c:
    lwz     r11,228(r9)
    mtctr   r11
    bctrl
    lbz     r0,32(r31)
    cmpwi   r0,0
    bne-    L024bc768
L024bc754:
    li      r12,0
    mr      r3,r30
    addi    r4,r1,8
    stw     r12,8(r1)
    bl      ext_024bc5cc
L024bc768:
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
