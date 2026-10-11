# Converted from the disassembly of 0x020326b4 (248 bytes). Name is a placeholder.
    .text
    .globl Batch_020326b4
Batch_020326b4:
    stwu    r1,-112(r1)
    mflr    r0
    stmw    r24,80(r1)
    mr      r31,r3
    addi    r3,r1,56
    stw     r0,116(r1)
    li      r0,0
    addi    r5,r1,12
    stb     r0,12(r1)
    bl      ext_020440f4
    lwz     r8,60(r1)
    lbz     r30,64(r1)
    lwz     r7,56(r1)
    lwz     r29,68(r1)
    lis     r28,4096
    addi    r27,r31,20
    stw     r7,36(r1)
    addi    r28,r28,22500
    li      r25,4
    stw     r8,40(r1)
L02032704:
    stb     r30,24(r1)
    lwz     r11,36(r1)
    lwz     r0,40(r1)
    stw     r11,16(r1)
    stw     r0,20(r1)
    stw     r29,28(r1)
    stw     r28,32(r1)
    lwz     r24,4(r27)
    addi    r31,r27,4
    xor     r4,r24,r31
    cntlzw  r5,r4
    srwi    r0,r5,5
    xori    r6,r0,1
    clrlwi. r0,r6,24
    beq-    L02032788
    li      r26,0
L02032744:
    mr      r4,r24
    lwz     r24,0(r24)
    addi    r3,r1,8
    addi    r4,r4,-652
    stw     r26,8(r1)
    bl      ext_0259b624
    addi    r4,r1,8
    addi    r3,r1,16
    bl      ext_02044170
    addi    r3,r1,8
    bl      ext_0259b58c
    xor     r9,r24,r31
    cntlzw  r0,r9
    srwi    r8,r0,5
    xori    r11,r8,1
    clrlwi. r12,r11,24
    bne+    L02032744
L02032788:
    addic.  r25,r25,-1
    addi    r27,r27,16
    bne+    L02032704
    lbz     r3,12(r1)
    lmw     r24,80(r1)
    lwz     r0,116(r1)
    mtlr    r0
    addi    r1,r1,112
    blr
