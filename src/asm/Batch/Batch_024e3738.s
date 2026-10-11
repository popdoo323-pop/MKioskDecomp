# Converted from the disassembly of 0x024e3738 (212 bytes). Name is a placeholder.
    .text
    .globl Batch_024e3738
Batch_024e3738:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r8,184(r30)
    cmpwi   r8,0
    beq-    L024e37f4
    lwz     r9,176(r30)
    cmpwi   r9,0
    bne-    L024e37f4
    lis     r12,4117
    lwz     r12,3660(r12)
    lwz     r11,16(r12)
    lwz     r9,4(r8)
    lwz     r0,0(r11)
    cmplw   r9,r0
    lwz     r11,4(r11)
    bge-    L024e3790
    slwi    r8,r9,2
    add     r11,r11,r8
L024e3790:
    lis     r8,4119
    lwzu    r0,3860(r8)
    lis     r4,4119
    lwz     r31,0(r11)
    cmpwi   r0,0
    addi    r4,r4,28104
    bne-    L024e37c0
    lis     r0,4107
    li      r12,1
    addic   r0,r0,-10008
    stw     r12,0(r8)
    stw     r0,0(r4)
L024e37c0:
    cmpwi   r31,0
    beq-    L024e37e4
    lwz     r12,196(r31)
    lwz     r10,12(r12)
    mtctr   r10
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024e37e8
L024e37e4:
    li      r31,0
L024e37e8:
    mr      r3,r30
    mr      r4,r31
    bl      ext_0248e338
L024e37f4:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
