# Converted from the disassembly of 0x0203857c (536 bytes). Name is a placeholder.
    .text
    .globl Batch_0203857c
Batch_0203857c:
    stwu    r1,-80(r1)
    stmw    r22,24(r1)
    stfd    f31,64(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,72(r1)
    mflr    r0
    stw     r0,84(r1)
    mr      r29,r4
    mr      r27,r3
    lbz     r11,548(r27)
    cmpwi   r11,0
    fmr     f31,f1
    beq-    L02038774
    li      r23,0
    lis     r26,4096
    mr      r25,r23
    addi    r26,r26,17164
    li      r24,14
L020385c4:
    mr      r3,r23
    li      r4,4
    bl      ext_02045bdc
    stw     r3,16(r1)
    addi    r3,r1,16
    stw     r26,20(r1)
    bl      ext_020397e0
    lwz     r11,16(r1)
    lbz     r12,0(r11)
    li      r30,0
    cmpwi   r12,0
    lis     r0,8
    beq-    L0203861c
L020385f8:
    addi    r30,r30,1
    cmpw    r30,r0
    addi    r11,r11,1
    bgt-    L02038618
    lbz     r12,0(r11)
    cmpwi   r12,0
    bne+    L020385f8
    b       L0203861c
L02038618:
    li      r30,0
L0203861c:
    lwz     r4,4(r29)
    lwz     r5,20(r4)
    mtctr   r5
    mr      r3,r29
    bctrl
    lwz     r7,0(r29)
    lbz     r6,0(r7)
    li      r31,0
    cmpwi   r6,0
    lis     r9,8
    beq-    L0203866c
L02038648:
    addi    r31,r31,1
    cmpw    r31,r9
    addi    r7,r7,1
    bgt-    L02038668
    lbz     r8,0(r7)
    cmpwi   r8,0
    bne+    L02038648
    b       L0203866c
L02038668:
    li      r31,0
L0203866c:
    subf.   r30,r31,r30
    li      r22,0
    blt-    L02038764
L02038678:
    lwz     r10,16(r1)
    stw     r26,12(r1)
    add     r0,r10,r22
    addi    r3,r1,8
    stw     r0,8(r1)
    bl      ext_020397e0
    lwz     r11,12(r1)
    lwz     r4,20(r11)
    mtctr   r4
    addi    r3,r1,8
    bctrl
    lwz     r5,4(r29)
    lwz     r6,20(r5)
    mtctr   r6
    lwz     r28,8(r1)
    mr      r3,r29
    bctrl
    lwz     r8,0(r29)
    cmplw   r28,r8
    beq-    L02038748
    mr.     r0,r31
    li      r10,0
    ble-    L02038748
    lwz     r12,8(r1)
    mtctr   r0
    lwz     r9,0(r29)
L020386e0:
    lbz     r0,0(r12)
    cmpwi   r0,0
    bne-    L020386fc
    lbzx    r0,r9,r10
    cmpwi   r0,0
    beq-    L02038748
    b       L02038728
L020386fc:
    lbzx    r7,r9,r10
    cmpwi   r7,0
    beq-    L02038728
    cmplw   r7,r0
    bne-    L02038728
    addi    r12,r12,1
    addi    r10,r10,1
    bdnz+   L020386e0
    cmpwi   r22,-1
    beq-    L02038764
    b       L02038750
L02038728:
    addi    r22,r22,1
    cmpw    r22,r30
    ble+    L02038678
    addic.  r24,r24,-1
    addi    r23,r23,1
    addi    r25,r25,24
    bne+    L020385c4
    b       L02038774
L02038748:
    cmpwi   r22,-1
    beq-    L02038764
L02038750:
    lwz     r5,448(r27)
    fmr     f1,f31
    li      r4,0
    add     r3,r5,r25
    bl      ext_0262efe0
L02038764:
    addic.  r24,r24,-1
    addi    r23,r23,1
    addi    r25,r25,24
    bne+    L020385c4
L02038774:
    lmw     r22,24(r1)
    lfs     f31,72(r1)
    lfd     f31,64(r1)
    isync
    lwz     r0,84(r1)
    mtlr    r0
    addi    r1,r1,80
    blr
