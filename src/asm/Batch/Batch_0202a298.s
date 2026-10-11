# Converted from the disassembly of 0x0202a298 (192 bytes). Name is a placeholder.
    .text
    .globl Batch_0202a298
Batch_0202a298:
    stwu    r1,-40(r1)
    stmw    r25,12(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r29,r4
    mr      r27,r3
    mr      r3,r29
    mr      r31,r5
    lwz     r26,4(r29)
    bl      ext_020271c4
    mr      r3,r31
    bl      ext_020271c4
    li      r28,0
    lwz     r0,280(r27)
    mr      r30,r28
    cmpw    r30,r0
    bge-    L0202a344
    addi    r25,r27,76
L0202a2e0:
    lwz     r4,12(r25)
    cmpwi   r4,0
    addi    r25,r25,8
    beq-    L0202a338
    lwz     r5,12(r4)
    cmplw   r5,r29
    beq-    L0202a304
    cmplw   r5,r31
    bne-    L0202a338
L0202a304:
    cmpw    r28,r26
    bge-    L0202a324
    mr      r3,r27
    mr      r5,r29
    bl      ext_02028e6c
    addi    r28,r28,1
    lwz     r0,280(r27)
    b       L0202a338
L0202a324:
    mr      r5,r31
    mr      r3,r27
    bl      ext_02028e6c
    lwz     r0,280(r27)
    addi    r28,r28,1
L0202a338:
    addi    r30,r30,1
    cmpw    r30,r0
    blt+    L0202a2e0
L0202a344:
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
