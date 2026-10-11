# Converted from the disassembly of 0x0200d59c (448 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d59c
Batch_0200d59c:
    stwu    r1,-32(r1)
    stmw    r27,12(r1)
    mflr    r0
    stw     r0,36(r1)
    lwz     r6,100(r3)
    lwz     r7,596(r6)
    mtctr   r7
    mr      r28,r4
    mr      r31,r3
    bctrl
    cmpwi   r3,0
    beq-    L0200d5ec
    mr      r3,r31
    bl      ext_0200d350
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    li      r3,1
    blr
L0200d5ec:
    lis     r30,4119
    lwzu    r3,-4780(r30)
    lwz     r8,0(r3)
    lwz     r0,92(r8)
    mtctr   r0
    bctrl
    lwz     r0,0(r28)
    mr      r29,r3
    lwz     r11,4(r31)
    lbz     r8,4(r28)
    cmplw   r0,r11
    lbz     r9,5(r28)
    bne-    L0200d744
    lbz     r12,8(r31)
    cmplw   r8,r12
    bne-    L0200d744
    lbz     r0,9(r31)
    cmplw   r9,r0
    bne-    L0200d744
    bl      ext_029ab090
    lwz     r0,276(r31)
    li      r7,1000
    lis     r9,4124
    subfc   r8,r0,r4
    lwz     r10,272(r31)
    mulhwu  r12,r8,r7
    subfe   r7,r10,r3
    lwzu    r5,29040(r9)
    mulli   r0,r7,1000
    lwz     r6,4(r9)
    mulli   r4,r8,1000
    add     r3,r12,r0
    bl      ext_02934634
    cmpwi   r3,0
    lwz     r9,4(r29)
    blt-    L0200d744
    bgt-    L0200d688
    cmplw   r4,r9
    ble-    L0200d744
L0200d688:
    lwz     r10,0(r30)
    lwz     r6,24(r10)
    lwz     r27,164(r6)
    bl      ext_029ab090
    lwz     r12,100(r31)
    lwz     r6,436(r12)
    mtctr   r6
    li      r4,1
    mr      r3,r31
    bctrl
    lwz     r11,104(r31)
    lwz     r8,20(r11)
    lwz     r29,28(r11)
    slwi    r7,r8,2
    add     r28,r29,r7
    cmplw   r29,r28
    beq-    L0200d714
L0200d6cc:
    lwz     r12,0(r29)
    lwz     r10,4(r31)
    lwz     r9,4(r12)
    cmplw   r9,r10
    bne-    L0200d6f0
    lbz     r11,9(r12)
    lbz     r0,9(r31)
    cmplw   r11,r0
    beq-    L0200d708
L0200d6f0:
    lwz     r0,0(r12)
    cmpwi   r0,3
    beq-    L0200d708
    mr      r3,r27
    addi    r4,r12,4
    bl      ext_027b28b8
L0200d708:
    addi    r29,r29,4
    cmplw   r29,r28
    bne+    L0200d6cc
L0200d714:
    lwz     r6,0(r30)
    li      r7,10
    lwz     r3,20(r6)
    addi    r4,r1,8
    stw     r7,8(r1)
    bl      ext_027ada20
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    li      r3,1
    blr
L0200d744:
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    li      r3,0
    blr
