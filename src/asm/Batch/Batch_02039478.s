# Converted from the disassembly of 0x02039478 (292 bytes). Name is a placeholder.
    .text
    .globl Batch_02039478
Batch_02039478:
    stwu    r1,-56(r1)
    stmw    r21,12(r1)
    mflr    r0
    stw     r0,60(r1)
    lis     r12,4117
    lwz     r12,-28988(r12)
    mr      r30,r4
    cmpwi   r12,0
    mr      r29,r3
    bne-    L020394bc
    mr      r3,r29
    bl      ext_02039408
    lmw     r21,12(r1)
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
L020394bc:
    bl      ext_02041f68
    bl      ext_020427dc
    li      r21,0
    lis     r24,4120
    lwz     r8,72(r3)
    mr      r23,r21
    addi    r24,r24,-11468
    lis     r28,4096
    addi    r26,r8,-1
    li      r22,14
    addi    r28,r28,17236
    subfic  r25,r8,1
L020394ec:
    cmpwi   r30,0
    bne-    L020394fc
    cmplwi  r26,4
    blt-    L02039528
L020394fc:
    add     r9,r28,r23
    lbz     r31,4(r9)
    extsb   r31,r31
    bl      ext_02041f68
    bl      ext_02042680
    addi    r27,r3,384
    mr      r3,r27
    bl      ext_0262b790
    cmpwi   r31,0
    bgt-    L02039558
    b       L02039554
L02039528:
    add     r0,r28,r23
    subf    r11,r25,r0
    lbz     r31,0(r11)
    extsb   r31,r31
    bl      ext_02041f68
    bl      ext_02042680
    addi    r27,r3,384
    mr      r3,r27
    bl      ext_0262b790
    cmpwi   r31,0
    bgt-    L02039558
L02039554:
    lwz     r31,0(r24)
L02039558:
    mr      r4,r21
    addi    r3,r29,4
    bl      ext_02598144
    mr      r4,r31
    bl      ext_0259c040
    mr      r3,r27
    bl      ext_0262b7c4
    addi    r23,r23,5
    addic.  r22,r22,-1
    addi    r21,r21,1
    addi    r24,r24,4
    bne+    L020394ec
    lmw     r21,12(r1)
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
