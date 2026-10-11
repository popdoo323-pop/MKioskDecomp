# Converted from the disassembly of 0x024bc804 (204 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc804
Batch_024bc804:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lwz     r10,216(r30)
    cmpwi   r10,0
    mr      r31,r4
    beq-    L024bc838
    lwz     r12,4(r30)
    li      r11,25
    stw     r11,128(r12)
L024bc838:
    li      r4,2
    mr      r5,r31
    mr      r3,r30
    bl      ext_02484e4c
    lwz     r3,64(r30)
    cmpwi   r3,0
    beq-    L024bc864
    lwz     r4,24(r31)
    cmpwi   r4,-1
    beq-    L024bc864
    bl      ext_024872cc
L024bc864:
    lwz     r12,84(r30)
    lwz     r0,244(r12)
    mtctr   r0
    mr      r3,r30
    bctrl
    lhz     r10,222(r30)
    li      r0,1
    cmpwi   r10,0
    lwz     r4,216(r30)
    beq-    L024bc890
    mr      r0,r10
L024bc890:
    cmpwi   r4,0
    sth     r0,220(r30)
    beq-    L024bc8a4
    lwz     r3,4(r30)
    bl      ext_0248d73c
L024bc8a4:
    li      r0,1
    mr      r3,r30
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_024bc5cc
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
