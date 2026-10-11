# Converted from the disassembly of 0x024de720 (344 bytes). Name is a placeholder.
    .text
    .globl Batch_024de720
Batch_024de720:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    lis     r9,4117
    stw     r0,20(r1)
    lwz     r9,3660(r9)
    lbz     r10,40(r9)
    cmpwi   r10,0
    mr      r30,r3
    bne-    L024de860
    lwz     r0,212(r30)
    cmpwi   r0,6
    bne-    L024de858
    lwz     r11,1400(r30)
    lbz     r8,108(r11)
    cmpwi   r8,0
    bne-    L024de858
    lwz     r12,80(r30)
    cmpwi   r12,0
    bne-    L024de824
    lwz     r7,12(r9)
    lwz     r0,0(r7)
    cmplwi  r0,3
    lwz     r12,4(r7)
    ble-    L024de78c
    addi    r12,r12,12
L024de78c:
    lis     r9,4119
    lwzu    r0,4616(r9)
    lis     r4,4119
    lwz     r31,0(r12)
    cmpwi   r0,0
    addi    r4,r4,4620
    bne-    L024de7bc
    lis     r0,4107
    li      r6,1
    addic   r0,r0,-13388
    stw     r6,0(r9)
    stw     r0,0(r4)
L024de7bc:
    cmpwi   r31,0
    beq-    L024de7e0
    lwz     r8,36(r31)
    lwz     r6,12(r8)
    mtctr   r6
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024de7e4
L024de7e0:
    li      r31,0
L024de7e4:
    lbz     r11,644(r31)
    cmpwi   r11,0
    bne-    L024de860
    lwz     r3,1400(r30)
    bl      ext_024c3d80
    mr      r3,r30
    bl      ext_0248db10
    lis     r3,4107
    addi    r3,r3,-12924
    bl      ext_02045d30
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024de824:
    cmpwi   r12,1
    bne-    L024de860
    lwz     r10,28(r11)
    cmplwi  r10,1
    lwz     r10,32(r11)
    ble-    L024de840
    addi    r10,r10,4
L024de840:
    lwz     r3,0(r10)
    li      r4,0
    bl      ext_0247fce4
    lwz     r12,88(r30)
    cmplw   r12,r3
    blt-    L024de860
L024de858:
    mr      r3,r30
    bl      ext_0248d4fc
L024de860:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
