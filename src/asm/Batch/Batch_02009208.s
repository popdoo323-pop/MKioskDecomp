# Converted from the disassembly of 0x02009208 (320 bytes). Name is a placeholder.
    .text
    .globl Batch_02009208
Batch_02009208:
    stwu    r1,-48(r1)
    stmw    r23,12(r1)
    mflr    r0
    stw     r0,52(r1)
    mr      r26,r3
    li      r31,0
    lwz     r9,164(r26)
    mr      r29,r31
    cmpw    r29,r9
    mr      r27,r4
    bge-    L02009330
    addi    r25,r26,68
    li      r28,0
L0200923c:
    cmplwi  r29,12
    bge-    L02009258
    lwzx    r23,r25,r28
    bl      ext_02421764
    mr.     r11,r3
    bne-    L02009268
    b       L0200926c
L02009258:
    lwz     r23,0(r25)
    bl      ext_02421764
    mr.     r11,r3
    beq-    L0200926c
L02009268:
    lwz     r11,424(r11)
L0200926c:
    lwz     r10,52(r11)
    cmplw   r29,r10
    li      r12,0
    bge-    L02009288
    lwz     r0,60(r11)
    slwi    r11,r29,2
    lwzx    r12,r11,r0
L02009288:
    lwz     r0,72(r12)
    cmpwi   r0,0
    beq-    L020092cc
    lwz     r7,68(r12)
    lwz     r8,64(r12)
    cmpw    r7,r8
    blt-    L020092a8
    subf    r7,r8,r7
L020092a8:
    lwz     r8,60(r12)
    mulli   r6,r7,20
    li      r30,1
    lwz     r3,84(r23)
    lwzx    r24,r8,r6
    bl      ext_02185be4
    cmpwi   r3,0
    beq-    L020092e8
    b       L020092f8
L020092cc:
    lwz     r5,60(r12)
    lwz     r3,84(r23)
    li      r30,1
    lwz     r24,0(r5)
    bl      ext_02185be4
    cmpwi   r3,0
    bne-    L020092f8
L020092e8:
    lbz     r0,101(r23)
    cmpwi   r0,0
    bne-    L020092f8
    li      r30,0
L020092f8:
    cmpwi   r27,0
    clrlwi  r30,r30,24
    bne-    L02009308
    xori    r30,r30,1
L02009308:
    cmpwi   r30,0
    lwz     r6,164(r26)
    beq-    L02009320
    cmpw    r24,r31
    ble-    L02009320
    mr      r31,r24
L02009320:
    addi    r29,r29,1
    cmpw    r29,r6
    addi    r28,r28,4
    blt+    L0200923c
L02009330:
    mr      r3,r31
    lmw     r23,12(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
