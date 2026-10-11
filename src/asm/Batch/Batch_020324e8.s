# Converted from the disassembly of 0x020324e8 (460 bytes). Name is a placeholder.
    .text
    .globl Batch_020324e8
Batch_020324e8:
    stwu    r1,-56(r1)
    stmw    r21,12(r1)
    li      r31,0
    lis     r27,4119
    mflr    r0
    li      r30,9
    li      r21,1
    lis     r22,4120
    lis     r24,4119
    lis     r26,4120
    lis     r25,4119
    addi    r27,r27,5556
    mr      r23,r31
    stw     r0,60(r1)
    lis     r29,4120
    mr      r28,r23
    addi    r29,r29,-12172
L0203252c:
    lwz     r7,5596(r25)
    cmpwi   r7,0
    lwz     r8,5592(r24)
    bne-    L02032544
    stb     r28,-31352(r22)
    stw     r21,5596(r25)
L02032544:
    cmpwi   r8,0
    bne-    L02032564
    lis     r4,4117
    addi    r3,r26,-31351
    li      r5,188
    addi    r4,r4,-29300
    stw     r21,5592(r24)
    bl      ext_029abc88
L02032564:
    cmplwi  r31,9
    blt-    L0203258c
    li      r3,0
    bl      ext_02045ae4
    addic.  r30,r30,-1
    addi    r31,r31,1
    stwx    r3,r29,r23
    addi    r23,r23,4
    bne+    L0203252c
    b       L020325cc
L0203258c:
    lbz     r0,-31352(r22)
    cmpwi   r0,0
    bne-    L020325ac
    li      r5,9
    addi    r4,r26,-31351
    mr      r3,r27
    bl      ext_026200ec
    stb     r21,-31352(r22)
L020325ac:
    slwi    r10,r31,2
    lwzx    r3,r10,r27
    bl      ext_02045ae4
    addic.  r30,r30,-1
    addi    r31,r31,1
    stwx    r3,r29,r23
    addi    r23,r23,4
    bne+    L0203252c
L020325cc:
    lis     r30,4119
    li      r31,0
    addi    r30,r30,5600
    lis     r22,4120
    mr      r26,r31
    addi    r22,r22,-12260
    mr      r21,r26
    lis     r28,4119
    lis     r29,4120
    lis     r27,4119
    lis     r25,4120
    li      r24,1
    li      r23,4
L02032600:
    lwz     r0,5616(r28)
    cmpwi   r0,0
    lwz     r0,5620(r27)
    bne-    L02032618
    stb     r21,-31114(r25)
    stw     r24,5616(r28)
L02032618:
    cmpwi   r0,0
    bne-    L02032638
    lis     r4,4117
    addi    r3,r29,-31163
    li      r5,49
    addi    r4,r4,-29352
    stw     r24,5620(r27)
    bl      ext_029abc88
L02032638:
    cmplwi  r31,4
    blt-    L02032660
    li      r3,0
    bl      ext_02045ae4
    addic.  r23,r23,-1
    addi    r31,r31,1
    stwx    r3,r22,r26
    addi    r26,r26,4
    bne+    L02032600
    b       L020326a0
L02032660:
    lbz     r0,-31114(r25)
    cmpwi   r0,0
    bne-    L02032680
    li      r5,4
    addi    r4,r29,-31163
    mr      r3,r30
    bl      ext_026200ec
    stb     r24,-31114(r25)
L02032680:
    slwi    r6,r31,2
    lwzx    r3,r6,r30
    bl      ext_02045ae4
    addic.  r23,r23,-1
    addi    r31,r31,1
    stwx    r3,r22,r26
    addi    r26,r26,4
    bne+    L02032600
L020326a0:
    lmw     r21,12(r1)
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
