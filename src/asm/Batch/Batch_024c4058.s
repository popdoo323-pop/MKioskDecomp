# Converted from the disassembly of 0x024c4058 (264 bytes). Name is a placeholder.
    .text
    .globl Batch_024c4058
Batch_024c4058:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,120(r31)
    lwz     r3,0(r12)
    cmpwi   r3,0
    beq-    L024c40a4
    lwz     r0,4(r12)
    lwz     r12,28(r3)
    cmplw   r12,r0
    bne-    L024c40a4
    lwz     r11,108(r3)
    li      r12,-69
    and     r11,r11,r12
    ori     r0,r11,8
    stw     r0,108(r3)
    bl      ext_02902838
L024c40a4:
    lwz     r12,124(r31)
    lwz     r3,0(r12)
    cmpwi   r3,0
    beq-    L024c40dc
    lwz     r11,28(r3)
    lwz     r12,4(r12)
    cmplw   r11,r12
    bne-    L024c40dc
    lwz     r0,108(r3)
    li      r11,-69
    and     r12,r0,r11
    ori     r12,r12,8
    stw     r12,108(r3)
    bl      ext_02902838
L024c40dc:
    lwz     r12,128(r31)
    lwz     r3,0(r12)
    cmpwi   r3,0
    beq-    L024c4114
    lwz     r0,28(r3)
    lwz     r11,4(r12)
    cmplw   r0,r11
    bne-    L024c4114
    lwz     r12,108(r3)
    li      r0,-69
    and     r0,r12,r0
    ori     r0,r0,8
    stw     r0,108(r3)
    bl      ext_02902838
L024c4114:
    lwz     r12,132(r31)
    lwz     r3,0(r12)
    cmpwi   r3,0
    beq-    L024c414c
    lwz     r11,28(r3)
    lwz     r0,4(r12)
    cmplw   r11,r0
    bne-    L024c414c
    lwz     r0,108(r3)
    li      r11,-69
    and     r0,r0,r11
    ori     r0,r0,8
    stw     r0,108(r3)
    bl      ext_02902838
L024c414c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
