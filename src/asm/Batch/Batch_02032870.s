# Converted from the disassembly of 0x02032870 (440 bytes). Name is a placeholder.
    .text
    .globl Batch_02032870
Batch_02032870:
    mflr    r0
    stwu    r1,-112(r1)
    stw     r0,116(r1)
    stmw    r21,68(r1)
    mr.     r31,r6
    mr      r30,r4
    mr      r29,r3
    bne-    L020328a0
    lwz     r3,8(r29)
    bl      ext_0262ecb4
    mr.     r31,r3
    beq-    L02032a10
L020328a0:
    li      r5,0
    lwz     r3,4(r29)
    mr      r4,r30
    addi    r6,r1,28
    stw     r5,28(r1)
    bl      ext_02052e2c
    bl      ext_02041f68
    bl      ext_02042680
    addi    r25,r3,384
    mr      r3,r25
    bl      ext_0262b790
    lwz     r6,28(r1)
    clrlwi. r12,r6,31
    beq-    L020328f0
    mr      r3,r29
    mr      r4,r30
    bl      ext_020326b4
    cmpwi   r3,0
    beq-    L020329b8
    b       L02032a08
L020328f0:
    rlwinm. r0,r6,0,30,30
    beq-    L020329b8
    li      r5,0
    addi    r3,r1,48
    mr      r4,r30
    bl      ext_020441b8
    lwz     r0,48(r1)
    addi    r23,r29,20
    lwz     r4,52(r1)
    lis     r24,4096
    stw     r0,32(r1)
    addi    r24,r24,22516
    lwz     r26,56(r1)
    li      r22,4
    stw     r4,36(r1)
L0203292c:
    lwz     r0,36(r1)
    lwz     r9,32(r1)
    stw     r0,16(r1)
    stw     r9,12(r1)
    stw     r26,20(r1)
    stw     r24,24(r1)
    lwz     r27,4(r23)
    addi    r28,r23,4
    xor     r12,r27,r28
    cntlzw  r0,r12
    srwi    r11,r0,5
    xori    r4,r11,1
    clrlwi. r5,r4,24
    beq-    L020329ac
    li      r21,0
L02032968:
    mr      r8,r27
    lwz     r27,0(r27)
    addi    r3,r1,8
    addi    r4,r8,-652
    stw     r21,8(r1)
    bl      ext_0259b624
    addi    r4,r1,8
    addi    r3,r1,12
    bl      ext_0204422c
    addi    r3,r1,8
    bl      ext_0259b58c
    xor     r8,r27,r28
    cntlzw  r9,r8
    srwi    r7,r9,5
    xori    r10,r7,1
    clrlwi. r11,r10,24
    bne+    L02032968
L020329ac:
    addic.  r22,r22,-1
    addi    r23,r23,16
    bne+    L0203292c
L020329b8:
    li      r6,0
    mr      r5,r30
    mr      r4,r31
    mr      r3,r29
    bl      ext_020546e8
    cmpwi   r3,0
    bne-    L02032a08
    lwz     r6,28(r1)
    mr      r3,r29
    mr      r4,r31
    mr      r5,r30
    bl      ext_020327ac
    mr      r3,r25
    bl      ext_0262b7c4
    mr      r3,r31
    lmw     r21,68(r1)
    lwz     r0,116(r1)
    mtlr    r0
    addi    r1,r1,112
    blr
L02032a08:
    mr      r3,r25
    bl      ext_0262b7c4
L02032a10:
    lmw     r21,68(r1)
    lwz     r0,116(r1)
    mtlr    r0
    addi    r1,r1,112
    li      r3,0
    blr
