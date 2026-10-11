# Converted from the disassembly of 0x02017704 (756 bytes). Name is a placeholder.
    .text
    .globl Batch_02017704
Batch_02017704:
    stwu    r1,-64(r1)
    stmw    r24,16(r1)
    stfd    f31,48(r1)
    ps_merge10 f31,f31,f31
    mflr    r0
    stw     r0,68(r1)
    stfs    f31,56(r1)
    mr      r29,r3
    lbz     r8,117(r29)
    cmpwi   r8,0
    beq-    L020179d8
    lbz     r0,118(r29)
    cmpwi   r0,0
    bne-    L020179d8
    mr      r3,r29
    bl      ext_020161b8
    mr      r31,r3
    mr      r3,r29
    bl      ext_02016230
    lis     r5,4120
    cmpwi   r31,0
    lfs     f31,-14096(r5)
    beq-    L02017794
    lis     r12,4120
    lfs     f31,-14092(r12)
    mr      r3,r29
    li      r28,0
    fmr     f1,f31
    stw     r28,8(r1)
    addi    r4,r1,8
    li      r5,1
    bl      ext_02016664
    lwz     r6,8(r1)
    cmpwi   r6,0
    beq-    L020179d8
    b       L020177cc
L02017794:
    cmpwi   r3,0
    beq-    L020177a4
    lis     r11,4120
    lfs     f31,-14088(r11)
L020177a4:
    li      r28,0
    fmr     f1,f31
    mr      r3,r29
    li      r5,1
    addi    r4,r1,8
    stw     r28,8(r1)
    bl      ext_02016664
    lwz     r6,8(r1)
    cmpwi   r6,0
    beq-    L020179d8
L020177cc:
    lis     r10,4096
    lfs     f0,5368(r10)
    cmpwi   r31,0
    stfs    f0,12(r1)
    beq-    L02017824
    lis     r9,4120
    lwz     r5,72(r29)
    fmr     f1,f31
    lfs     f2,-14080(r9)
    mr      r3,r29
    addi    r4,r1,12
    bl      ext_02016258
    lis     r11,4120
    lfs     f0,12(r1)
    mr      r27,r3
    lfs     f13,-14072(r11)
    addic   r0,r27,-1
    fcmpu   cr0,f0,f13
    subfe   r26,r0,r27
    li      r30,1
    bge-    L02017864
    b       L020178a8
L02017824:
    lis     r5,4120
    lfs     f2,-14084(r5)
    fmr     f1,f31
    lwz     r5,72(r29)
    mr      r3,r29
    addi    r4,r1,12
    bl      ext_02016258
    lis     r11,4120
    lfs     f0,12(r1)
    mr      r27,r3
    lfs     f13,-14072(r11)
    addic   r0,r27,-1
    fcmpu   cr0,f0,f13
    subfe   r26,r0,r27
    li      r30,1
    blt-    L020178a8
L02017864:
    lwz     r7,100(r29)
    lwz     r3,80(r7)
    lwz     r4,84(r7)
    lwz     r5,88(r7)
    bl      ext_02109bc0
    lis     r9,4120
    fabs    f13,f1
    lfs     f0,-14076(r9)
    fcmpu   cr0,f13,f0
    ble-    L020178a4
    lwz     r7,100(r29)
    lwz     r12,88(r7)
    lfs     f13,280(r12)
    fabs    f13,f13
    fcmpu   cr0,f13,f0
    bgt-    L020178a8
L020178a4:
    li      r30,0
L020178a8:
    lbz     r9,119(r29)
    lwz     r6,72(r29)
    clrlwi  r30,r30,24
    lwz     r24,152(r29)
    cmpwi   r9,0
    li      r31,0
    lwz     r3,84(r6)
    beq-    L020178d4
    cmpwi   r27,2
    bne-    L020178d4
    li      r31,1
L020178d4:
    clrlwi  r31,r31,24
    bl      ext_02185c38
    lwz     r10,44(r24)
    cmplw   r3,r10
    lwz     r10,48(r24)
    bge-    L020178f4
    mulli   r11,r3,108
    add     r10,r10,r11
L020178f4:
    lhz     r0,10(r10)
    lwz     r6,8(r1)
    clrlwi  r25,r0,31
    lwz     r3,84(r6)
    lwz     r24,152(r29)
    bl      ext_02185c38
    lwz     r0,44(r24)
    cmplw   r3,r0
    lwz     r12,48(r24)
    bge-    L02017924
    mulli   r5,r3,108
    add     r12,r12,r5
L02017924:
    lhz     r0,10(r12)
    clrlwi  r8,r0,31
    xor     r0,r25,r8
    clrlwi  r0,r0,24
    or.     r8,r31,r0
    lbz     r10,119(r29)
    beq-    L02017944
    li      r30,1
L02017944:
    cmpwi   r10,0
    beq-    L0201796c
    cmpwi   r0,0
    beq-    L0201796c
    lis     r7,4120
    lfs     f0,12(r1)
    lfs     f13,-14068(r7)
    fcmpu   cr0,f0,f13
    bge-    L0201796c
    li      r27,2
L0201796c:
    cmpwi   r26,0
    beq-    L020179d8
    cmpwi   r30,0
    beq-    L020179d8
    li      r0,1
    lwz     r3,88(r29)
    li      r4,100
    stb     r0,118(r29)
    bl      ext_02008eb0
    lwz     r12,92(r29)
    lwz     r7,292(r12)
    cmpw    r3,r7
    mfcr    r8
    srwi.   r0,r8,31
    beq-    L020179d4
    stw     r27,124(r29)
    li      r0,1
    stb     r0,116(r29)
    lmw     r24,16(r1)
    lfs     f31,56(r1)
    lfd     f31,48(r1)
    isync
    lwz     r0,68(r1)
    mtlr    r0
    addi    r1,r1,64
    blr
L020179d4:
    stw     r28,124(r29)
L020179d8:
    lmw     r24,16(r1)
    lfs     f31,56(r1)
    lfd     f31,48(r1)
    isync
    lwz     r0,68(r1)
    mtlr    r0
    addi    r1,r1,64
    blr
