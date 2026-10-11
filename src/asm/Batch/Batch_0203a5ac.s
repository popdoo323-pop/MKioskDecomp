# Converted from the disassembly of 0x0203a5ac (712 bytes). Name is a placeholder.
    .text
    .globl Batch_0203a5ac
Batch_0203a5ac:
    stwu    r1,-40(r1)
    stmw    r25,12(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r29,r4
    mr      r27,r3
    lwz     r3,4(r27)
    mr      r31,r5
    bl      ext_0203b094
    lbz     r9,89(r3)
    cmpwi   r9,0
    li      r26,0
    bne-    L0203a620
    lwz     r3,44(r27)
    bl      ext_0262ea78
    cmpwi   r3,0
    beq-    L0203a650
    lwz     r5,44(r27)
    lwz     r6,0(r5)
    cmpwi   r6,0
    beq-    L0203a614
    lwz     r8,0(r5)
    lwz     r7,256(r8)
    cmplw   r7,r29
    bne-    L0203a638
    b       L0203a620
L0203a614:
    li      r7,-1
    cmplw   r7,r29
    bne-    L0203a638
L0203a620:
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    li      r3,0
    blr
L0203a638:
    lwz     r9,0(r27)
    lwz     r0,172(r9)
    mtctr   r0
    mr      r3,r27
    li      r4,0
    bctrl
L0203a650:
    bl      ext_02041f68
    bl      ext_02042680
    addi    r30,r3,384
    mr      r3,r30
    bl      ext_0262b790
    lwz     r4,44(r27)
    li      r6,0
    mr      r5,r29
    addi    r3,r27,36
    bl      ext_020546e8
    cntlzw  r10,r3
    mr      r3,r30
    srwi    r30,r10,5
    bl      ext_0262b7c4
    cmpwi   r30,0
    beq-    L0203a85c
    lwz     r5,44(r27)
    lwz     r0,0(r5)
    cmpwi   r0,0
    beq-    L0203a6ac
    lwz     r3,0(r5)
    mr      r4,r31
    bl      ext_025878ac
L0203a6ac:
    lis     r10,4096
    lfs     f1,18384(r10)
    mr      r3,r27
    bl      ext_0203a4ec
    lwz     r3,40(r27)
    mr      r4,r29
    lis     r28,4119
    lis     r25,4119
    stb     r26,84(r27)
    addi    r28,r28,5700
    bl      ext_02052dbc
    cmplwi  r3,1
    beq-    L0203a6f0
    cmplwi  r3,2
    beq-    L0203a7b0
    mr      r3,r30
    b       L0203a860
L0203a6f0:
    lis     r12,4119
    lwz     r12,2652(r12)
    lwz     r8,44(r27)
    cmpwi   r12,0
    lwz     r31,0(r8)
    bne-    L0203a734
    lwz     r0,2640(r25)
    lis     r9,4119
    li      r5,1
    cmpwi   r0,0
    stw     r5,2652(r9)
    bne-    L0203a72c
    stw     r26,0(r28)
    li      r0,1
    stw     r0,2640(r25)
L0203a72c:
    lis     r7,4119
    stw     r28,5704(r7)
L0203a734:
    cmpwi   r31,0
    beq-    L0203a788
    lwz     r10,660(r31)
    lwz     r0,12(r10)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    beq-    L0203a788
    lis     r0,4119
    addic   r0,r0,5704
    cmplw   r3,r0
    beq-    L0203a79c
    lwz     r3,0(r3)
    cmpwi   r3,0
    beq-    L0203a788
L0203a774:
    cmplw   r3,r0
    beq-    L0203a79c
    lwz     r3,0(r3)
    cmpwi   r3,0
    bne+    L0203a774
L0203a788:
    addi    r3,r27,52
    li      r4,0
    bl      ext_0258c908
    mr      r3,r30
    b       L0203a860
L0203a79c:
    addi    r3,r27,52
    mr      r4,r31
    bl      ext_0258c908
    mr      r3,r30
    b       L0203a860
L0203a7b0:
    lwz     r8,44(r27)
    lis     r12,4119
    lwzu    r11,2660(r12)
    lwz     r31,0(r8)
    lis     r29,4119
    cmpwi   r11,0
    addi    r29,r29,5708
    bne-    L0203a7f4
    lwz     r7,2640(r25)
    li      r0,1
    cmpwi   r7,0
    stw     r0,0(r12)
    bne-    L0203a7f0
    stw     r26,0(r28)
    li      r10,1
    stw     r10,2640(r25)
L0203a7f0:
    stw     r28,0(r29)
L0203a7f4:
    cmpwi   r31,0
    beq-    L0203a840
    lwz     r12,660(r31)
    lwz     r6,12(r12)
    mtctr   r6
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    beq-    L0203a840
    cmplw   r3,r29
    beq-    L0203a850
    lwz     r3,0(r3)
    cmpwi   r3,0
    beq-    L0203a840
L0203a82c:
    cmplw   r3,r29
    beq-    L0203a850
    lwz     r3,0(r3)
    cmpwi   r3,0
    bne+    L0203a82c
L0203a840:
    addi    r3,r27,56
    li      r4,0
    bl      ext_025a1308
    b       L0203a85c
L0203a850:
    addi    r3,r27,56
    mr      r4,r31
    bl      ext_025a1308
L0203a85c:
    mr      r3,r30
L0203a860:
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
