# Converted from the disassembly of 0x024dca6c (156 bytes). Name is a placeholder.
    .text
    .globl Batch_024dca6c
Batch_024dca6c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r3
    addi    r3,r30,200
    stw     r31,12(r1)
    stw     r0,20(r1)
    bl      ext_024dbfc0
    li      r31,0
    lwz     r3,1400(r30)
    stw     r31,276(r30)
    stw     r31,280(r30)
    bl      ext_024c4058
    li      r0,4
    lwz     r8,168(r30)
    mtctr   r0
    li      r11,1
L024dcab0:
    slw     r12,r11,r31
    addi    r31,r31,1
    andc    r8,r8,r12
    bdnz+   L024dcab0
    lwz     r3,1388(r30)
    li      r4,0
    stw     r8,168(r30)
    bl      ext_02480634
    lwz     r3,1404(r30)
    li      r4,0
    bl      ext_02480634
    lwz     r3,1396(r30)
    li      r4,0
    bl      ext_02480634
    mr      r3,r30
    bl      ext_0248cbcc
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
