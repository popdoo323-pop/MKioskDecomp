# Converted from the disassembly of 0x024dda3c (120 bytes). Name is a placeholder.
    .text
    .globl Batch_024dda3c
Batch_024dda3c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,228(r31)
    cmpwi   r3,0
    bne-    L024dda68
    lwz     r4,224(r31)
    mr      r3,r31
    bl      ext_0248e5b4
L024dda68:
    lwz     r12,1384(r31)
    lwz     r0,212(r31)
    li      r6,1
    lwz     r4,92(r12)
    cmpwi   r0,4
    li      r5,-1
    bne-    L024dda9c
    bl      ext_024af444
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024dda9c:
    bl      ext_024af380
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
