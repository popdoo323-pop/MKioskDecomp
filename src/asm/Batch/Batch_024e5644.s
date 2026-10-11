# Converted from the disassembly of 0x024e5644 (336 bytes). Name is a placeholder.
    .text
    .globl Batch_024e5644
Batch_024e5644:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mflr    r0
    stw     r0,36(r1)
    lis     r29,4117
    lwzu    r12,3660(r29)
    lwz     r12,12(r12)
    lwz     r0,0(r12)
    mr      r30,r3
    cmplwi  r0,3
    lwz     r9,4(r12)
    ble-    L024e5678
    addi    r9,r9,12
L024e5678:
    lis     r27,4119
    lis     r28,4107
    lwzu    r8,4616(r27)
    addi    r28,r28,-9268
    cmpwi   r8,0
    lwz     r31,0(r9)
    lis     r26,4119
    bne-    L024e56a4
    stw     r28,4620(r26)
    li      r0,1
    stw     r0,0(r27)
L024e56a4:
    cmpwi   r31,0
    beq-    L024e56cc
    lwz     r10,36(r31)
    lwz     r8,12(r10)
    mtctr   r8
    mr      r3,r31
    addi    r4,r26,4620
    bctrl
    cmpwi   r3,0
    bne-    L024e56d0
L024e56cc:
    li      r31,0
L024e56d0:
    lwz     r6,40(r31)
    lwz     r0,4768(r6)
    cmpwi   r0,3
    beq-    L024e5754
    lwz     r11,0(r29)
    lwz     r7,12(r11)
    lwz     r5,0(r7)
    lwz     r11,4(r7)
    cmplwi  r5,3
    lwz     r7,0(r27)
    ble-    L024e5700
    addi    r11,r11,12
L024e5700:
    cmpwi   r7,0
    lwz     r31,0(r11)
    bne-    L024e5718
    stw     r28,4620(r26)
    li      r10,1
    stw     r10,0(r27)
L024e5718:
    cmpwi   r31,0
    beq-    L024e5740
    lwz     r11,36(r31)
    lwz     r12,12(r11)
    mtctr   r12
    mr      r3,r31
    addi    r4,r26,4620
    bctrl
    cmpwi   r3,0
    bne-    L024e5744
L024e5740:
    li      r31,0
L024e5744:
    lwz     r10,40(r31)
    lwz     r6,4768(r10)
    cmpwi   r6,4
    bne-    L024e5780
L024e5754:
    lwz     r8,76(r30)
    cmpwi   r8,4
    beq-    L024e5780
    lwz     r0,84(r30)
    cmplwi  r0,2400
    blt-    L024e5780
    bl      ext_02490c90
    li      r31,1
    stb     r31,1473(r3)
    bl      ext_0233b990
    stw     r31,468(r3)
L024e5780:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
