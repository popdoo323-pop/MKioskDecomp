# Converted from the disassembly of 0x02028adc (320 bytes). Name is a placeholder.
    .text
    .globl Batch_02028adc
Batch_02028adc:
    stwu    r1,-40(r1)
    stmw    r24,8(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r29,r4
    li      r31,0
    mr      r28,r3
    lwz     r0,280(r28)
    mr      r25,r31
    cmpw    r25,r0
    li      r24,99
    bge-    L02028c04
    addi    r27,r28,76
L02028b10:
    lwz     r10,0(r29)
    cmpwi   r10,2
    lwzu    r26,8(r27)
    beq-    L02028b30
    lwz     r8,8(r26)
    lwz     r9,104(r8)
    cmplw   r9,r10
    bne-    L02028bf8
L02028b30:
    lwz     r7,12(r26)
    cmpwi   r7,0
    bne-    L02028bf8
    mr      r3,r28
    bl      ext_02028a30
    cmpwi   r3,0
    beq-    L02028b70
    lwz     r5,8(r26)
    lwz     r30,80(r28)
    lwz     r3,84(r5)
    bl      ext_02185c38
    lwz     r9,164(r30)
    subf    r0,r3,r9
    cmpw    r0,r24
    bge-    L02028bf4
    b       L02028bec
L02028b70:
    bl      ext_02421764
    lwz     r6,8(r26)
    mr.     r30,r3
    lwz     r3,84(r6)
    beq-    L02028b88
    lwz     r30,424(r30)
L02028b88:
    bl      ext_02185c38
    lwz     r0,52(r30)
    cmplw   r3,r0
    li      r12,0
    bge-    L02028ba8
    lwz     r6,60(r30)
    slwi    r11,r3,2
    lwzx    r12,r11,r6
L02028ba8:
    lwz     r7,72(r12)
    cmpwi   r7,0
    beq-    L02028bdc
    lwz     r0,68(r12)
    lwz     r11,64(r12)
    cmpw    r0,r11
    lwz     r9,60(r12)
    blt-    L02028bcc
    subf    r0,r11,r0
L02028bcc:
    mulli   r8,r0,20
    add     r10,r9,r8
    lwz     r0,4(r10)
    b       L02028be4
L02028bdc:
    lwz     r10,60(r12)
    lwz     r0,4(r10)
L02028be4:
    cmpw    r0,r24
    bge-    L02028bf4
L02028bec:
    mr      r31,r26
    mr      r24,r0
L02028bf4:
    lwz     r0,280(r28)
L02028bf8:
    addi    r25,r25,1
    cmpw    r25,r0
    blt+    L02028b10
L02028c04:
    mr      r3,r31
    lmw     r24,8(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
