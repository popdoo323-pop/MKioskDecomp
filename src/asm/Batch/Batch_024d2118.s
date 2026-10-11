# Converted from the disassembly of 0x024d2118 (188 bytes). Name is a placeholder.
    .text
    .globl Batch_024d2118
Batch_024d2118:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r3
    stw     r31,12(r1)
    stw     r0,20(r1)
    bl      ext_02480510
    lis     r12,4119
    lwzu    r10,4720(r12)
    lis     r4,4119
    lwz     r31,88(r30)
    cmpwi   r10,0
    addi    r4,r4,28088
    bne-    L024d2164
    lis     r11,4107
    li      r0,1
    addi    r11,r11,-18680
    stw     r0,0(r12)
    stw     r11,0(r4)
L024d2164:
    cmpwi   r31,0
    beq-    L024d2188
    lwz     r8,84(r31)
    lwz     r0,12(r8)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024d218c
L024d2188:
    li      r31,0
L024d218c:
    lwz     r11,92(r30)
    lwz     r0,616(r31)
    lhz     r9,4(r11)
    lwz     r12,620(r31)
    cmplw   r9,r0
    lwz     r4,172(r30)
    bge-    L024d21b0
    slwi    r9,r9,2
    add     r12,r12,r9
L024d21b0:
    lwz     r5,0(r12)
    mr      r3,r30
    bl      ext_02485160
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
