# Converted from the disassembly of 0x024d31a0 (220 bytes). Name is a placeholder.
    .text
    .globl Batch_024d31a0
Batch_024d31a0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,628(r31)
    lwz     r12,624(r31)
    cmpw    r12,r0
    bge-    L024d31dc
    lwz     r0,632(r31)
    slwi    r12,r12,2
    stwx    r4,r12,r0
    lwz     r12,624(r31)
    addi    r12,r12,1
    stw     r12,624(r31)
L024d31dc:
    lwz     r0,92(r31)
    cmpwi   r0,0
    lwz     r12,644(r31)
    beq-    L024d3238
    lwz     r11,96(r31)
    cmplw   r12,r11
    bge-    L024d3238
    mullw   r12,r0,r12
    lwz     r11,100(r31)
    li      r4,1
    lwz     r5,640(r31)
    li      r6,0
    slwi    r0,r12,4
    mr      r7,r4
    add     r3,r11,r0
    bl      ext_024cdde0
    lwz     r12,640(r31)
    lwz     r11,644(r31)
    addi    r12,r12,1
    addi    r11,r11,1
    stw     r12,640(r31)
    stw     r11,644(r31)
    b       L024d3268
L024d3238:
    lwz     r3,100(r31)
    li      r4,1
    lwz     r5,640(r31)
    mr      r7,r4
    li      r6,0
    bl      ext_024cdde0
    lwz     r12,640(r31)
    lwz     r11,644(r31)
    addi    r12,r12,1
    addi    r11,r11,1
    stw     r12,640(r31)
    stw     r11,644(r31)
L024d3268:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
