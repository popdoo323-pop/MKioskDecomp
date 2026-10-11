# Converted from the disassembly of 0x024d327c (212 bytes). Name is a placeholder.
    .text
    .globl Batch_024d327c
Batch_024d327c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,616(r31)
    lwz     r0,636(r31)
    cmplw   r0,r12
    lwz     r12,620(r31)
    bge-    L024d32ac
    slwi    r11,r0,2
    add     r12,r12,r11
L024d32ac:
    stw     r4,0(r12)
    lwz     r0,92(r31)
    cmpwi   r0,0
    lwz     r11,644(r31)
    beq-    L024d330c
    lwz     r12,96(r31)
    cmplw   r11,r12
    bge-    L024d330c
    mullw   r0,r0,r11
    lwz     r12,100(r31)
    li      r6,1
    lwz     r5,636(r31)
    li      r4,0
    slwi    r11,r0,4
    mr      r7,r6
    add     r3,r12,r11
    bl      ext_024cdde0
    lwz     r11,636(r31)
    lwz     r12,644(r31)
    addi    r11,r11,1
    addi    r12,r12,1
    stw     r11,636(r31)
    stw     r12,644(r31)
    b       L024d333c
L024d330c:
    lwz     r3,100(r31)
    li      r6,1
    lwz     r5,636(r31)
    mr      r7,r6
    li      r4,0
    bl      ext_024cdde0
    lwz     r11,636(r31)
    lwz     r12,644(r31)
    addi    r11,r11,1
    addi    r12,r12,1
    stw     r11,636(r31)
    stw     r12,644(r31)
L024d333c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
