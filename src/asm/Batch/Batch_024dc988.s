# Converted from the disassembly of 0x024dc988 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_024dc988
Batch_024dc988:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    lwz     r0,76(r30)
    lwz     r11,56(r31)
    cmpwi   r0,5
    stw     r11,256(r30)
    bge-    L024dc9c4
    mr      r3,r30
    li      r4,0
    bl      ext_0248da3c
L024dc9c4:
    lwz     r12,4(r31)
    stw     r12,204(r30)
    lwz     r0,12(r31)
    stw     r0,212(r30)
    lwz     r8,16(r31)
    stw     r8,216(r30)
    lwz     r9,24(r31)
    stw     r9,224(r30)
    lwz     r10,28(r31)
    stw     r10,228(r30)
    lwz     r0,48(r31)
    addi    r7,r30,240
    li      r5,0
    stw     r0,248(r30)
    lwz     r12,52(r31)
    li      r0,2
    addi    r9,r31,40
    addi    r8,r30,232
    stw     r12,252(r30)
    lwz     r6,64(r31)
    mtctr   r0
    addi    r10,r31,32
    stw     r6,264(r30)
L024dca20:
    lwzx    r11,r10,r5
    stwx    r11,r8,r5
    lwzx    r12,r9,r5
    stwx    r12,r7,r5
    addi    r5,r5,4
    bdnz+   L024dca20
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
