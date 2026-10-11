# Converted from the disassembly of 0x02039290 (224 bytes). Name is a placeholder.
    .text
    .globl Batch_02039290
Batch_02039290:
    stwu    r1,-72(r1)
    mflr    r0
    stmw    r25,44(r1)
    mr      r30,r3
    li      r4,-1
    addi    r3,r1,28
    stw     r0,76(r1)
    bl      ext_02044420
    lis     r28,4096
    li      r26,14
    li      r25,0
    addi    r28,r28,22564
L020392c0:
    lfs     f0,36(r1)
    lwz     r9,32(r1)
    lwz     r8,28(r1)
    stw     r9,16(r1)
    stw     r8,12(r1)
    addi    r3,r30,4
    stw     r28,24(r1)
    mr      r4,r25
    stfs    f0,20(r1)
    bl      ext_02598144
    lwz     r31,4(r3)
    addi    r29,r3,4
    xor     r0,r31,r29
    cntlzw  r12,r0
    srwi    r10,r12,5
    xori    r0,r10,1
    clrlwi. r4,r0,24
    beq-    L02039350
    li      r27,0
L0203930c:
    mr      r11,r31
    lwz     r31,0(r31)
    addi    r3,r1,8
    addi    r4,r11,-636
    stw     r27,8(r1)
    bl      ext_0259b624
    addi    r4,r1,8
    addi    r3,r1,12
    bl      ext_020444a4
    addi    r3,r1,8
    bl      ext_0259b58c
    xor     r6,r31,r29
    cntlzw  r0,r6
    srwi    r5,r0,5
    xori    r8,r5,1
    clrlwi. r0,r8,24
    bne+    L0203930c
L02039350:
    addic.  r26,r26,-1
    addi    r25,r25,1
    bne+    L020392c0
    lmw     r25,44(r1)
    lwz     r0,76(r1)
    mtlr    r0
    addi    r1,r1,72
    blr
