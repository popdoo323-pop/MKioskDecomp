# Converted from the disassembly of 0x024bec1c (124 bytes). Name is a placeholder.
    .text
    .globl Batch_024bec1c
Batch_024bec1c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lbz     r12,244(r3)
    cmpwi   r12,0
    mr      r31,r4
    bne-    L024bec7c
    lwz     r11,16(r31)
    cmpwi   r11,0
    beq-    L024bec60
    lwz     r0,20(r31)
    cmpwi   r0,0
    bne-    L024bec60
    lis     r3,4107
    addi    r3,r3,-30144
    bl      ext_02045d30
L024bec60:
    mr      r3,r31
    bl      ext_0248a66c
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024bec7c:
    mr      r4,r31
    bl      ext_024bc2d8
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
