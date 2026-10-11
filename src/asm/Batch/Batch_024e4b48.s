# Converted from the disassembly of 0x024e4b48 (380 bytes). Name is a placeholder.
    .text
    .globl Batch_024e4b48
Batch_024e4b48:
    stwu    r1,-40(r1)
    mflr    r0
    stmw    r25,12(r1)
    mr.     r31,r3
    stw     r0,44(r1)
    bne-    L024e4b70
    li      r3,452
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024e4cac
L024e4b70:
    mr      r3,r31
    bl      ext_0248c63c
    lis     r6,4107
    li      r26,0
    addi    r6,r6,-8968
    stw     r26,204(r31)
    lis     r28,4107
    stw     r26,200(r31)
    addic.  r25,r31,216
    stw     r6,196(r31)
    lis     r29,4107
    addi    r28,r28,-9348
    lis     r30,4107
    addi    r29,r29,-9372
    addi    r30,r30,-9396
    stw     r26,212(r31)
    bne-    L024e4bc4
    li      r3,76
    bl      ext_0260128c
    mr.     r25,r3
    beq-    L024e4c1c
L024e4bc4:
    mr.     r27,r25
    bne-    L024e4bdc
    li      r3,76
    bl      ext_0260128c
    mr.     r27,r3
    beq-    L024e4c18
L024e4bdc:
    mr.     r3,r27
    bne-    L024e4bf4
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024e4c0c
L024e4bf4:
    addi    r7,r27,12
    stw     r30,4(r3)
    li      r8,32
    stw     r7,0(r3)
    stw     r8,8(r3)
    sth     r26,74(r27)
L024e4c0c:
    lwz     r9,0(r27)
    stw     r29,4(r27)
    sth     r26,0(r9)
L024e4c18:
    stw     r28,4(r25)
L024e4c1c:
    addic.  r25,r31,292
    bne-    L024e4c34
    li      r3,76
    bl      ext_0260128c
    mr.     r25,r3
    beq-    L024e4c8c
L024e4c34:
    mr.     r27,r25
    bne-    L024e4c4c
    li      r3,76
    bl      ext_0260128c
    mr.     r27,r3
    beq-    L024e4c88
L024e4c4c:
    mr.     r3,r27
    bne-    L024e4c64
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024e4c7c
L024e4c64:
    addi    r10,r27,12
    stw     r30,4(r3)
    li      r0,32
    stw     r10,0(r3)
    stw     r0,8(r3)
    sth     r26,74(r27)
L024e4c7c:
    lwz     r12,0(r27)
    stw     r29,4(r27)
    sth     r26,0(r12)
L024e4c88:
    stw     r28,4(r25)
L024e4c8c:
    addi    r3,r31,372
    stw     r26,368(r31)
    bl      ext_024884bc
    lis     r0,4106
    addic   r0,r0,19332
    addi    r3,r31,404
    stw     r0,396(r31)
    bl      ext_0248a9c4
L024e4cac:
    mr      r3,r31
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
