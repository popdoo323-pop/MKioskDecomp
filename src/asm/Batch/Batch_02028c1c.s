# Converted from the disassembly of 0x02028c1c (280 bytes). Name is a placeholder.
    .text
    .globl Batch_02028c1c
Batch_02028c1c:
    stwu    r1,-40(r1)
    stmw    r24,8(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r29,r4
    li      r31,0
    mr      r28,r3
    lwz     r0,280(r28)
    mr      r26,r31
    cmpw    r26,r0
    li      r24,1000
    bge-    L02028d1c
    addi    r25,r28,76
L02028c50:
    lwz     r10,0(r29)
    cmpwi   r10,2
    lwzu    r27,8(r25)
    beq-    L02028c70
    lwz     r6,8(r27)
    lwz     r8,104(r6)
    cmplw   r8,r10
    bne-    L02028d10
L02028c70:
    lwz     r9,12(r27)
    cmpwi   r9,0
    bne-    L02028d10
    bl      ext_02421764
    lwz     r8,8(r27)
    mr.     r30,r3
    lwz     r3,84(r8)
    beq-    L02028c94
    lwz     r30,424(r30)
L02028c94:
    bl      ext_02185c38
    lwz     r0,52(r30)
    cmplw   r3,r0
    li      r12,0
    bge-    L02028cb4
    lwz     r0,60(r30)
    slwi    r11,r3,2
    lwzx    r12,r11,r0
L02028cb4:
    lwz     r5,72(r12)
    cmpwi   r5,0
    beq-    L02028cf4
    lwz     r7,68(r12)
    lwz     r11,64(r12)
    cmpw    r7,r11
    lwz     r9,60(r12)
    blt-    L02028cd8
    subf    r7,r11,r7
L02028cd8:
    mulli   r6,r7,20
    add     r5,r9,r6
    lwz     r7,8(r5)
    cmpw    r7,r24
    lwz     r0,280(r28)
    bge-    L02028d10
    b       L02028d08
L02028cf4:
    lwz     r5,60(r12)
    lwz     r7,8(r5)
    cmpw    r7,r24
    lwz     r0,280(r28)
    bge-    L02028d10
L02028d08:
    mr      r31,r27
    mr      r24,r7
L02028d10:
    addi    r26,r26,1
    cmpw    r26,r0
    blt+    L02028c50
L02028d1c:
    mr      r3,r31
    lmw     r24,8(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
