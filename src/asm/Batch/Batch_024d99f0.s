# Converted from the disassembly of 0x024d99f0 (276 bytes). Name is a placeholder.
    .text
    .globl Batch_024d99f0
Batch_024d99f0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r0,20(r1)
    bl      ext_0233b990
    lwz     r9,188(r30)
    cmplwi  r9,1
    lwz     r7,460(r3)
    blt-    L024d9a60
    beq-    L024d9a48
    cmplwi  r9,3
    blt-    L024d9a80
    beq-    L024d9ae0
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024d9a48:
    addis   r10,r7,1
    lwz     r0,-836(r10)
    cmpwi   r0,4
    beq-    L024d9aec
    cmpwi   r0,0
    beq-    L024d9aec
L024d9a60:
    li      r11,2
    stw     r11,188(r30)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024d9a80:
    addi    r3,r7,8
    li      r4,0
    bl      ext_02361e20
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L024d9a9c
    lwz     r3,424(r3)
L024d9a9c:
    lwz     r12,52(r3)
    cmpwi   r12,0
    li      r0,0
    beq-    L024d9ab4
    lwz     r5,60(r3)
    lwz     r0,0(r5)
L024d9ab4:
    mr      r3,r0
    li      r4,255
    bl      ext_0242f724
    li      r6,3
    stw     r6,188(r30)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024d9ae0:
    mr      r3,r30
    mr      r4,r31
    bl      ext_0248e554
L024d9aec:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
