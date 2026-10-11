# Converted from the disassembly of 0x02032b70 (268 bytes). Name is a placeholder.
    .text
    .globl Batch_02032b70
Batch_02032b70:
    stwu    r1,-96(r1)
    mflr    r0
    stmw    r24,64(r1)
    mr      r31,r5
    mr      r30,r4
    stw     r0,100(r1)
    mr      r29,r3
    bl      ext_02041f68
    bl      ext_02042680
    addi    r27,r3,384
    mr      r3,r27
    bl      ext_0262b790
    mr      r5,r31
    addi    r3,r1,44
    mr      r4,r30
    bl      ext_020441b8
    lwz     r0,44(r1)
    addi    r30,r29,20
    lwz     r4,48(r1)
    lis     r31,4096
    stw     r0,28(r1)
    addi    r31,r31,22516
    lwz     r26,52(r1)
    li      r28,4
    stw     r4,32(r1)
L02032bd4:
    lwz     r0,32(r1)
    lwz     r7,28(r1)
    stw     r0,16(r1)
    stw     r7,12(r1)
    stw     r26,20(r1)
    stw     r31,24(r1)
    lwz     r25,4(r30)
    addi    r24,r30,4
    xor     r10,r25,r24
    cntlzw  r0,r10
    srwi    r9,r0,5
    xori    r12,r9,1
    clrlwi. r0,r12,24
    beq-    L02032c54
    li      r29,0
L02032c10:
    mr      r9,r25
    lwz     r25,0(r25)
    addi    r3,r1,8
    addi    r4,r9,-652
    stw     r29,8(r1)
    bl      ext_0259b624
    addi    r4,r1,8
    addi    r3,r1,12
    bl      ext_0204422c
    addi    r3,r1,8
    bl      ext_0259b58c
    xor     r6,r25,r24
    cntlzw  r0,r6
    srwi    r5,r0,5
    xori    r8,r5,1
    clrlwi. r0,r8,24
    bne+    L02032c10
L02032c54:
    addic.  r28,r28,-1
    addi    r30,r30,16
    bne+    L02032bd4
    mr      r3,r27
    bl      ext_0262b7c4
    lmw     r24,64(r1)
    lwz     r0,100(r1)
    mtlr    r0
    addi    r1,r1,96
    blr
