# Converted from the disassembly of 0x024c5b68 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5b68
Batch_024c5b68:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    cmpwi   r4,0
    stb     r4,8(r31)
    bne-    L024c5bc8
    lwz     r11,4(r31)
    lwz     r12,28(r11)
    mtctr   r12
    mr      r3,r31
    bctrl
    lwz     r0,12(r31)
    cmplw   r3,r0
    bne-    L024c5bc8
    lwz     r12,4(r31)
    li      r0,3
    stw     r0,8(r1)
    lwz     r0,60(r12)
    mtctr   r0
    mr      r3,r31
    addi    r4,r1,8
    bctrl
L024c5bc8:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
