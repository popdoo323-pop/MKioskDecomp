# Converted from the disassembly of 0x024eae88 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024eae88
Batch_024eae88:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r0,664(r31)
    cmpwi   r0,0
    beq-    L024eaee4
    lwz     r0,216(r4)
    cmpwi   r0,0
    bne-    L024eaee4
    lwz     r0,260(r4)
    cmpwi   r0,1
    bne-    L024eaee4
    bl      ext_024b06cc
    li      r12,48
    li      r11,1
    stw     r12,368(r31)
    stb     r11,392(r31)
    bl      ext_02490c90
    li      r5,0
    addi    r4,r31,364
    bl      ext_024dcbe0
L024eaee4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
