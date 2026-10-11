# Converted from the disassembly of 0x024ddab4 (448 bytes). Name is a placeholder.
    .text
    .globl Batch_024ddab4
Batch_024ddab4:
    stwu    r1,-40(r1)
    mflr    r0
    stmw    r26,16(r1)
    li      r28,0
    mr      r27,r3
    mr      r30,r28
    addi    r26,r27,240
    addi    r31,r1,4
    stw     r0,44(r1)
    li      r29,2
L024ddadc:
    lwzx    r0,r26,r30
    cmpwi   r0,0
    bne-    L024ddb64
    add     r10,r27,r30
    lwz     r4,232(r10)
    cmpwi   r4,-1
    beq-    L024ddb18
    mr      r3,r27
    bl      ext_0248e5b4
    stwu    r3,4(r31)
    addic.  r29,r29,-1
    addi    r28,r28,1
    addi    r30,r30,4
    bne+    L024ddadc
    b       L024ddb78
L024ddb18:
    lwz     r11,212(r27)
    cmpwi   r11,0
    bne-    L024ddb48
    mr      r3,r27
    li      r4,2001
    bl      ext_0248e5b4
    stwu    r3,4(r31)
    addic.  r29,r29,-1
    addi    r28,r28,1
    addi    r30,r30,4
    bne+    L024ddadc
    b       L024ddb78
L024ddb48:
    cmpwi   r28,0
    li      r4,2004
    bne-    L024ddb58
    li      r4,2003
L024ddb58:
    mr      r3,r27
    bl      ext_0248e5b4
    mr      r0,r3
L024ddb64:
    stwu    r0,4(r31)
    addic.  r29,r29,-1
    addi    r28,r28,1
    addi    r30,r30,4
    bne+    L024ddadc
L024ddb78:
    lwz     r0,212(r27)
    cmplwi  r0,1
    blt-    L024ddbac
    beq-    L024ddbc8
    cmplwi  r0,2
    beq-    L024ddbfc
    cmplwi  r0,6
    beq-    L024ddc30
    lmw     r26,16(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
L024ddbac:
    lwz     r12,1416(r27)
    lwz     r3,8(r1)
    li      r5,-1
    lwz     r4,244(r12)
    li      r6,1
    bl      ext_024af380
    b       L024ddc60
L024ddbc8:
    lwz     r7,1408(r27)
    lwz     r3,8(r1)
    li      r5,-1
    lwz     r4,244(r7)
    li      r6,1
    bl      ext_024af380
    lwz     r7,1412(r27)
    lwz     r3,12(r1)
    li      r5,-1
    lwz     r4,244(r7)
    li      r6,1
    bl      ext_024af380
    b       L024ddc60
L024ddbfc:
    lwz     r8,1408(r27)
    lwz     r3,12(r1)
    li      r5,-1
    lwz     r4,244(r8)
    li      r6,1
    bl      ext_024af380
    lwz     r8,1412(r27)
    lwz     r3,8(r1)
    li      r5,-1
    lwz     r4,244(r8)
    li      r6,1
    bl      ext_024af380
    b       L024ddc60
L024ddc30:
    lwz     r9,1432(r27)
    lwz     r3,12(r1)
    li      r5,-1
    lwz     r4,244(r9)
    li      r6,1
    bl      ext_024af380
    lwz     r9,1436(r27)
    lwz     r3,8(r1)
    li      r5,-1
    lwz     r4,244(r9)
    li      r6,1
    bl      ext_024af380
L024ddc60:
    lmw     r26,16(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
