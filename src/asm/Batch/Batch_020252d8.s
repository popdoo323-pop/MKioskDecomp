# Converted from the disassembly of 0x020252d8 (456 bytes). Name is a placeholder.
    .text
    .globl Batch_020252d8
Batch_020252d8:
    stwu    r1,-96(r1)
    stmw    r23,44(r1)
    stfd    f31,80(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,88(r1)
    mflr    r0
    stw     r0,100(r1)
    mr      r12,r4
    lhz     r5,4(r12)
    mr      r25,r3
    lhz     r4,2(r12)
    lwz     r7,44(r25)
    sth     r4,36(r1)
    sth     r5,38(r1)
    lwz     r27,0(r7)
    lwz     r26,36(r1)
    mr      r3,r27
    lwz     r30,12(r12)
    bl      ext_020062f0
    lis     r9,4096
    li      r31,0
    mr      r28,r3
    cmpwi   r30,0
    lfs     f31,10640(r9)
    mr      r29,r31
    ble-    L0202547c
    li      r24,0
L02025344:
    lbz     r10,816(r28)
    cmpwi   r10,0
    clrlwi  r0,r29,16
    beq-    L020253a0
    cmplwi  r0,10
    addi    r12,r28,88
    bge-    L0202536c
    slwi    r0,r0,2
    add     r12,r12,r0
    b       L020253b4
L0202536c:
    lhz     r9,0(r12)
    sth     r9,8(r1)
    lhz     r10,2(r12)
    sth     r10,10(r1)
    lhz     r4,0(r12)
    lhz     r5,2(r12)
    mr      r3,r27
    lwz     r23,8(r1)
    bl      ext_020062f0
    lha     r0,814(r3)
    cmpwi   r0,0
    bne-    L020253e4
    b       L0202546c
L020253a0:
    cmplwi  r0,10
    addi    r12,r28,48
    bge-    L020253b4
    slwi    r0,r0,2
    add     r12,r12,r0
L020253b4:
    lhz     r9,0(r12)
    sth     r9,8(r1)
    lhz     r10,2(r12)
    sth     r10,10(r1)
    lhz     r4,0(r12)
    lhz     r5,2(r12)
    mr      r3,r27
    lwz     r23,8(r1)
    bl      ext_020062f0
    lha     r0,814(r3)
    cmpwi   r0,0
    beq-    L0202546c
L020253e4:
    lwz     r8,40(r25)
    lwz     r3,84(r8)
    bl      ext_02185cd8
    lwz     r6,24(r3)
    stw     r6,24(r1)
    lwz     r7,28(r3)
    stw     r7,28(r1)
    lwz     r0,32(r3)
    stw     r6,12(r1)
    stw     r0,20(r1)
    cmplwi  r29,10
    stw     r0,32(r1)
    addi    r12,r28,364
    stw     r7,16(r1)
    psq_l   f12,12(r1),0,0
    bge-    L02025428
    add     r12,r12,r24
L02025428:
    psq_l   f13,0(r12),0,0
    ps_mul  f12,f12,f13
    ps_sum0 f0,f12,f12,f12
    lfs     f13,20(r1)
    fmr     f12,f0
    lfs     f0,8(r12)
    fmadds  f12,f13,f0,f12
    fcmpu   cr0,f12,f31
    ble-    L02025454
    fmr     f31,f12
    mr      r31,r29
L02025454:
    srwi    r6,r26,16
    srwi    r7,r23,16
    cmplw   r6,r7
    bne-    L0202546c
    mr      r31,r29
    b       L0202547c
L0202546c:
    addic.  r30,r30,-1
    addi    r29,r29,1
    addi    r24,r24,12
    bne+    L02025344
L0202547c:
    mr      r3,r31
    lmw     r23,44(r1)
    lfs     f31,88(r1)
    lfd     f31,80(r1)
    isync
    lwz     r0,100(r1)
    mtlr    r0
    addi    r1,r1,96
    blr
