# Converted from the disassembly of 0x02032a78 (248 bytes). Name is a placeholder.
    .text
    .globl Batch_02032a78
Batch_02032a78:
    stwu    r1,-112(r1)
    mflr    r0
    stmw    r24,80(r1)
    mr      r31,r3
    addi    r3,r1,56
    stw     r0,116(r1)
    lis     r0,8
    addi    r5,r1,32
    stw     r0,32(r1)
    bl      ext_02044320
    lwz     r9,60(r1)
    lwz     r30,64(r1)
    lwz     r8,56(r1)
    lwz     r29,68(r1)
    lis     r28,4096
    addi    r27,r31,20
    stw     r8,36(r1)
    addi    r28,r28,22548
    li      r25,4
    stw     r9,40(r1)
L02032ac8:
    stw     r30,20(r1)
    lwz     r12,36(r1)
    lwz     r0,40(r1)
    stw     r12,12(r1)
    stw     r0,16(r1)
    stw     r29,24(r1)
    stw     r28,28(r1)
    lwz     r24,4(r27)
    addi    r31,r27,4
    xor     r5,r24,r31
    cntlzw  r6,r5
    srwi    r4,r6,5
    xori    r7,r4,1
    clrlwi. r0,r7,24
    beq-    L02032b4c
    li      r26,0
L02032b08:
    mr      r5,r24
    lwz     r24,0(r24)
    addi    r3,r1,8
    addi    r4,r5,-652
    stw     r26,8(r1)
    bl      ext_0259b624
    addi    r4,r1,8
    addi    r3,r1,12
    bl      ext_020443ac
    addi    r3,r1,8
    bl      ext_0259b58c
    xor     r10,r24,r31
    cntlzw  r0,r10
    srwi    r9,r0,5
    xori    r12,r9,1
    clrlwi. r0,r12,24
    bne+    L02032b08
L02032b4c:
    addic.  r25,r25,-1
    addi    r27,r27,16
    bne+    L02032ac8
    lwz     r3,32(r1)
    lmw     r24,80(r1)
    lwz     r0,116(r1)
    mtlr    r0
    addi    r1,r1,112
    blr
