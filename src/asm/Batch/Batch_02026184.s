# Converted from the disassembly of 0x02026184 (620 bytes). Name is a placeholder.
    .text
    .globl Batch_02026184
Batch_02026184:
    stwu    r1,-72(r1)
    stmw    r25,12(r1)
    mflr    r0
    stfd    f30,40(r1)
    ps_merge10 f30,f30,f30
    stw     r0,76(r1)
    stfd    f31,56(r1)
    stfs    f30,48(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,64(r1)
    lis     r10,4120
    mr      r31,r3
    lwz     r27,52(r31)
    lfs     f0,-13408(r10)
    lfs     f13,28(r27)
    lwz     r25,56(r31)
    fmuls   f31,f13,f0
    lwz     r3,36(r31)
    addi    r29,r31,52
    fadds   f1,f31,f31
    lwz     r26,48(r31)
    addi    r28,r31,48
    addi    r30,r31,56
    bl      ext_02009660
    fsubs   f12,f1,f31
    lwz     r11,40(r31)
    stfs    f12,96(r31)
    lbz     r0,132(r11)
    lis     r9,4096
    cmpwi   r0,0
    lfs     f30,10636(r9)
    bne-    L02026228
    lwz     r3,84(r11)
    bl      ext_02185df8
    cmpwi   r3,0
    bne-    L02026228
    lwz     r11,40(r31)
    lwz     r3,84(r11)
    bl      ext_02186008
    cmpwi   r3,0
    beq-    L0202622c
L02026228:
    stfs    f30,96(r31)
L0202622c:
    lhz     r6,132(r27)
    sth     r6,8(r1)
    lhz     r7,134(r27)
    sth     r7,10(r1)
    lhz     r8,132(r25)
    lhz     r0,132(r27)
    cmplw   r8,r0
    lwz     r27,8(r1)
    bne-    L02026260
    lhz     r0,134(r25)
    clrlwi  r10,r27,16
    cmplw   r0,r10
    beq-    L02026280
L02026260:
    lhz     r0,132(r26)
    srwi    r12,r27,16
    cmplw   r0,r12
    bne-    L020262a0
    lhz     r0,134(r26)
    clrlwi  r5,r27,16
    cmplw   r0,r5
    bne-    L020262a0
L02026280:
    lis     r8,4096
    lwz     r5,36(r31)
    lfs     f1,10632(r8)
    stfs    f1,80(r31)
    lbz     r0,188(r5)
    cmpwi   r0,0
    beq-    L020263c0
    b       L020262c4
L020262a0:
    lwz     r4,0(r30)
    lwz     r3,0(r29)
    lwz     r5,0(r28)
    bl      ext_02109bc0
    lwz     r5,36(r31)
    stfs    f1,80(r31)
    lbz     r0,188(r5)
    cmpwi   r0,0
    beq-    L020263c0
L020262c4:
    lwz     r3,40(r31)
    bl      ext_02015194
    clrlwi  r5,r27,16
    srwi    r4,r27,16
    mr      r28,r3
    bl      ext_020062f0
    mr      r29,r3
    lhz     r5,134(r25)
    lhz     r4,132(r25)
    mr      r3,r28
    bl      ext_020062f0
    lhz     r4,132(r26)
    mr      r30,r3
    lhz     r5,134(r26)
    mr      r3,r28
    bl      ext_020062f0
    mr      r5,r3
    mr      r3,r29
    mr      r4,r30
    bl      ext_02109bc0
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r0,436(r12)
    fabs    f10,f1
    lis     r7,4120
    cmplwi  r0,1
    lfs     f31,-13396(r7)
    blt-    L0202633c
    beq-    L0202635c
    b       L02026364
L0202633c:
    lis     r12,4096
    lfs     f9,28(r29)
    lfs     f12,10660(r12)
    lis     r5,4120
    fcmpu   cr0,f9,f12
    lfs     f31,-13404(r5)
    blt-    L02026378
    b       L02026390
L0202635c:
    lis     r6,4120
    lfs     f31,-13400(r6)
L02026364:
    lis     r12,4096
    lfs     f9,28(r29)
    lfs     f12,10660(r12)
    fcmpu   cr0,f9,f12
    bge-    L02026390
L02026378:
    lis     r11,4096
    lfs     f13,10664(r11)
    fcmpu   cr0,f10,f13
    ble-    L02026390
    lis     r10,4120
    lfs     f31,-13392(r10)
L02026390:
    lwz     r7,40(r31)
    lwz     r3,84(r7)
    bl      ext_02185df8
    cmpwi   r3,0
    lfs     f11,80(r31)
    beq-    L020263b0
    lis     r9,4120
    lfs     f31,-13388(r9)
L020263b0:
    fcmpu   cr0,f11,f30
    ble-    L020263bc
    fneg    f31,f31
L020263bc:
    stfs    f31,96(r31)
L020263c0:
    mr      r3,r31
    bl      ext_02025c14
    lmw     r25,12(r1)
    lfs     f30,48(r1)
    lfs     f31,64(r1)
    lfd     f30,40(r1)
    lfd     f31,56(r1)
    isync
    lwz     r0,76(r1)
    mtlr    r0
    addi    r1,r1,72
    blr
