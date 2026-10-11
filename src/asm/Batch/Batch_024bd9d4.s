# Converted from the disassembly of 0x024bd9d4 (332 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd9d4
Batch_024bd9d4:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r30,48(r1)
    stw     r31,52(r1)
    mr      r30,r3
    stw     r0,60(r1)
    lwz     r8,244(r30)
    cmpwi   r8,0
    mr      r31,r4
    beq-    L024bdb00
    lwz     r10,216(r30)
    li      r9,1
    cmpwi   r10,0
    stb     r9,264(r30)
    beq-    L024bda54
    lwz     r7,244(r30)
    li      r11,25
    stw     r11,128(r7)
    lwz     r3,244(r30)
    lwz     r4,216(r30)
    bl      ext_0248d73c
    li      r12,1
    mr      r3,r30
    addi    r4,r1,8
    stw     r12,8(r1)
    bl      ext_024bc5cc
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
L024bda54:
    lwz     r0,0(r30)
    cmpwi   r0,-1
    beq-    L024bdad0
    lwz     r9,244(r30)
    li      r0,25
    stw     r0,128(r9)
    lwz     r6,84(r30)
    lwz     r8,244(r6)
    mtctr   r8
    mr      r3,r30
    bctrl
    mr      r4,r31
    addi    r3,r1,12
    bl      ext_0248a5f4
    lwz     r3,244(r30)
    li      r0,2
    lwz     r10,0(r30)
    stw     r0,32(r1)
    stw     r10,24(r1)
    stw     r30,20(r1)
    lwz     r12,196(r3)
    lwz     r6,196(r12)
    mtctr   r6
    addi    r4,r1,12
    bctrl
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
L024bdad0:
    lbz     r0,248(r30)
    cmpwi   r0,0
    bne-    L024bdb00
    lwz     r3,244(r30)
    lwz     r4,24(r31)
    bl      ext_0248dfb8
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
L024bdb00:
    mr      r3,r31
    bl      ext_0248a66c
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
