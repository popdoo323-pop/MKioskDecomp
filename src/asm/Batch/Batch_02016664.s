# Converted from the disassembly of 0x02016664 (712 bytes). Name is a placeholder.
    .text
    .globl Batch_02016664
Batch_02016664:
    stwu    r1,-128(r1)
    stmw    r22,56(r1)
    stfd    f31,112(r1)
    ps_merge10 f31,f31,f31
    stfd    f30,96(r1)
    mflr    r0
    stw     r0,132(r1)
    ps_merge10 f30,f30,f30
    stfs    f30,104(r1)
    stfs    f31,120(r1)
    fmr     f30,f1
    mr      r27,r4
    mr      r26,r3
    mr.     r28,r5
    lwz     r3,88(r26)
    beq-    L020166b4
    lwz     r25,164(r3)
    cmpwi   r25,0
    ble-    L02016900
    b       L020166c0
L020166b4:
    lwz     r25,168(r3)
    cmpwi   r25,0
    ble-    L02016900
L020166c0:
    mr      r4,r25
    bl      ext_02008eb0
    cmpwi   r25,0
    mr      r31,r25
    mr      r24,r3
    bgt-    L020166dc
    li      r31,1
L020166dc:
    lis     r8,4096
    fmuls   f30,f30,f30
    lfs     f31,4896(r8)
L020166e8:
    cmpwi   r28,0
    lwz     r10,88(r26)
    beq-    L0201671c
    cmplwi  r24,12
    addi    r11,r10,68
    bge-    L02016708
    slwi    r9,r24,2
    add     r11,r11,r9
L02016708:
    lwz     r3,72(r26)
    lwz     r23,0(r11)
    cmplw   r3,r23
    beq-    L020168e8
    b       L02016740
L0201671c:
    cmplwi  r24,12
    addi    r12,r10,116
    bge-    L02016730
    slwi    r0,r24,2
    add     r12,r12,r0
L02016730:
    lwz     r3,72(r26)
    lwz     r23,0(r12)
    cmplw   r3,r23
    beq-    L020168e8
L02016740:
    mr      r4,r23
    bl      ext_02031634
    lwz     r8,96(r26)
    xori    r29,r3,1
    li      r30,0
    cmpwi   r8,0
    clrlwi  r29,r29,24
    beq-    L02016798
    lwz     r5,88(r8)
    cmpwi   r5,0
    beq-    L02016798
    lwz     r11,88(r8)
    lwz     r12,8(r11)
    lwz     r3,84(r12)
    bl      ext_02185c38
    lwz     r6,72(r26)
    mr      r22,r3
    lwz     r3,84(r6)
    bl      ext_02185c38
    cmplw   r22,r3
    bne-    L02016798
    li      r30,1
L02016798:
    clrlwi  r30,r30,24
    bl      ext_02015408
    cmpwi   r3,0
    bne-    L020167b4
    cmpwi   r30,0
    beq-    L020167b4
    li      r29,1
L020167b4:
    lwz     r3,72(r26)
    mr      r4,r23
    bl      ext_020152f0
    lwz     r6,72(r26)
    mr      r30,r3
    lwz     r3,84(r6)
    bl      ext_02185b9c
    lwz     r3,84(r23)
    bl      ext_02185b9c
    cmpwi   r29,0
    beq-    L020168e8
    cmpwi   r30,0
    bne-    L020168e8
    lwz     r3,84(r23)
    bl      ext_0218608c
    cmpwi   r3,0
    bne-    L020168e8
    lwz     r3,84(r23)
    bl      ext_021861fc
    cmpwi   r3,0
    bne-    L020168e8
    lwz     r3,84(r23)
    bl      ext_02185cb4
    lwz     r4,72(r26)
    mr      r30,r3
    lwz     r3,84(r4)
    bl      ext_02185cb4
    psq_l   f10,0(r30),0,0
    psq_l   f11,0(r3),0,0
    ps_sub  f9,f10,f11
    psq_st  f9,8(r1),0,0
    lfs     f13,8(r30)
    lfs     f0,8(r3)
    lwz     r6,12(r1)
    fsubs   f12,f13,f0
    lwz     r5,8(r1)
    stw     r6,24(r1)
    lfs     f0,24(r1)
    stw     r5,20(r1)
    lfs     f6,20(r1)
    fmuls   f7,f0,f0
    stfs    f12,16(r1)
    lwz     r7,16(r1)
    fmadds  f8,f6,f6,f7
    stw     r7,28(r1)
    lfs     f13,28(r1)
    fmadds  f9,f13,f13,f8
    fcmpu   cr0,f9,f30
    bge-    L020168e8
    lwz     r4,72(r26)
    addi    r3,r1,32
    bl      ext_0203166c
    addi    r3,r1,44
    mr      r4,r23
    bl      ext_0203166c
    psq_l   f11,32(r1),0,0
    psq_l   f12,44(r1),0,0
    lfs     f7,52(r1)
    ps_mul  f10,f11,f12
    lfs     f6,40(r1)
    ps_sum0 f13,f10,f10,f10
    fmadds  f8,f6,f7,f13
    fcmpu   cr0,f8,f31
    stw     r23,0(r27)
    li      r3,2
    ble-    L02016904
    lmw     r22,56(r1)
    lfs     f30,104(r1)
    lfs     f31,120(r1)
    lfd     f30,96(r1)
    lfd     f31,112(r1)
    li      r3,1
    isync
    lwz     r0,132(r1)
    mtlr    r0
    addi    r1,r1,128
    blr
L020168e8:
    addi    r24,r24,1
    divw    r4,r24,r25
    mullw   r4,r4,r25
    addic.  r31,r31,-1
    subf    r24,r4,r24
    bne+    L020166e8
L02016900:
    li      r3,0
L02016904:
    lmw     r22,56(r1)
    lfs     f30,104(r1)
    lfs     f31,120(r1)
    lfd     f30,96(r1)
    lfd     f31,112(r1)
    isync
    lwz     r0,132(r1)
    mtlr    r0
    addi    r1,r1,128
    blr
