# Converted from the disassembly of 0x024c59f8 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_024c59f8
Batch_024c59f8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lbz     r0,1(r30)
    li      r29,0
    extsb   r0,r0
    cmpw    r29,r0
    mr      r31,r4
    bge-    L024c5a64
L024c5a2c:
    lwz     r11,4(r30)
    lwz     r0,20(r11)
    mtctr   r0
    mr      r3,r30
    mr      r4,r29
    bctrl
    lbz     r12,1(r30)
    cmplw   r3,r31
    extsb   r12,r12
    bne-    L024c5a58
    stb     r29,0(r30)
L024c5a58:
    addi    r29,r29,1
    cmpw    r29,r12
    blt+    L024c5a2c
L024c5a64:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
