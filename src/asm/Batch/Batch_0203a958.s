# Converted from the disassembly of 0x0203a958 (704 bytes). Name is a placeholder.
    .text
    .globl Batch_0203a958
Batch_0203a958:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mflr    r0
    stw     r0,36(r1)
    mr      r28,r3
    lwz     r3,4(r28)
    mr      r30,r4
    mr      r31,r5
    bl      ext_0203b094
    lbz     r12,89(r3)
    cmpwi   r12,0
    li      r27,0
    bne-    L0203a9cc
    lwz     r3,44(r28)
    bl      ext_0262ea78
    cmpwi   r3,0
    beq-    L0203a9fc
    lwz     r12,44(r28)
    lwz     r7,0(r12)
    cmpwi   r7,0
    beq-    L0203a9c0
    lwz     r8,0(r12)
    lwz     r7,256(r8)
    cmplw   r7,r30
    bne-    L0203a9e4
    b       L0203a9cc
L0203a9c0:
    li      r7,-1
    cmplw   r7,r30
    bne-    L0203a9e4
L0203a9cc:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    li      r3,0
    blr
L0203a9e4:
    lwz     r10,0(r28)
    lwz     r6,172(r10)
    mtctr   r6
    mr      r3,r28
    li      r4,0
    bctrl
L0203a9fc:
    bl      ext_02041f68
    bl      ext_02042680
    addi    r29,r3,384
    mr      r3,r29
    bl      ext_0262b790
    lwz     r4,44(r28)
    li      r6,0
    mr      r5,r30
    addi    r3,r28,36
    bl      ext_0205494c
    mr      r3,r29
    bl      ext_0262b7c4
    lwz     r3,44(r28)
    cmpwi   r3,0
    beq-    L0203ac04
    lwz     r0,0(r3)
    cmpwi   r0,0
    beq-    L0203aa50
    lwz     r3,0(r3)
    mr      r4,r31
    bl      ext_025878ac
L0203aa50:
    lis     r11,4096
    lfs     f1,18384(r11)
    mr      r3,r28
    bl      ext_0203a4ec
    lwz     r3,40(r28)
    lis     r29,4119
    mr      r4,r30
    addi    r29,r29,5700
    lis     r26,4119
    stb     r27,84(r28)
    bl      ext_02052dbc
    cmplwi  r3,1
    beq-    L0203aa94
    cmplwi  r3,2
    beq-    L0203ab54
    lwz     r3,44(r28)
    b       L0203ac04
L0203aa94:
    lis     r12,4119
    lwz     r12,2652(r12)
    lwz     r9,44(r28)
    cmpwi   r12,0
    lwz     r31,0(r9)
    bne-    L0203aad8
    lwz     r0,2640(r26)
    lis     r8,4119
    li      r12,1
    cmpwi   r0,0
    stw     r12,2652(r8)
    bne-    L0203aad0
    stw     r27,0(r29)
    li      r0,1
    stw     r0,2640(r26)
L0203aad0:
    lis     r6,4119
    stw     r29,5704(r6)
L0203aad8:
    cmpwi   r31,0
    beq-    L0203ab2c
    lwz     r9,660(r31)
    lwz     r0,12(r9)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    beq-    L0203ab2c
    lis     r0,4119
    addic   r0,r0,5704
    cmplw   r3,r0
    beq-    L0203ab40
    lwz     r3,0(r3)
    cmpwi   r3,0
    beq-    L0203ab2c
L0203ab18:
    cmplw   r3,r0
    beq-    L0203ab40
    lwz     r3,0(r3)
    cmpwi   r3,0
    bne+    L0203ab18
L0203ab2c:
    addi    r3,r28,52
    li      r4,0
    bl      ext_0258c908
    lwz     r3,44(r28)
    b       L0203ac04
L0203ab40:
    addi    r3,r28,52
    mr      r4,r31
    bl      ext_0258c908
    lwz     r3,44(r28)
    b       L0203ac04
L0203ab54:
    lis     r11,4119
    lwz     r9,44(r28)
    lwzu    r0,2660(r11)
    lis     r30,4119
    lwz     r31,0(r9)
    cmpwi   r0,0
    addi    r30,r30,5708
    bne-    L0203ab98
    lwz     r6,2640(r26)
    li      r5,1
    cmpwi   r6,0
    stw     r5,0(r11)
    bne-    L0203ab94
    stw     r27,0(r29)
    li      r0,1
    stw     r0,2640(r26)
L0203ab94:
    stw     r29,0(r30)
L0203ab98:
    cmpwi   r31,0
    beq-    L0203abe4
    lwz     r11,660(r31)
    lwz     r5,12(r11)
    mtctr   r5
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    beq-    L0203abe4
    cmplw   r3,r30
    beq-    L0203abf4
    lwz     r3,0(r3)
    cmpwi   r3,0
    beq-    L0203abe4
L0203abd0:
    cmplw   r3,r30
    beq-    L0203abf4
    lwz     r3,0(r3)
    cmpwi   r3,0
    bne+    L0203abd0
L0203abe4:
    addi    r3,r28,56
    li      r4,0
    bl      ext_025a1308
    b       L0203ac00
L0203abf4:
    addi    r3,r28,56
    mr      r4,r31
    bl      ext_025a1308
L0203ac00:
    lwz     r3,44(r28)
L0203ac04:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
