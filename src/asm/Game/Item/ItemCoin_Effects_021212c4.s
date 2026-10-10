# ItemCoin effects setup at 0x021212c4 (448 bytes). Runs two setup calls on the item object, then fills the seven
# effect slots from the string tables at 0x10172400 and 0x10173e48 (splash and sound names). External calls are supplied
# as symbols; the memcpy call uses the 0x029abc88 import target stored in the file. Written from the disassembly of the
# original bytes. Name is a placeholder.
    .text
    .globl ItemCoin_Effects_021212c4
ItemCoin_Effects_021212c4:
    stwu    r1, -56(r1)
    stmw    r21, 12(r1)
    mflr    r0
    stw     r0, 60(r1)
    or      r30, r3, r3
    lwz     r3, 508(r30)
    lwz     r4, 92(r30)
    li      r5, 1
    bl      ext_020dabc8
    lwz     r12, 0(r30)
    lwz     r6, 452(r12)
    mtctr   r6
    or      r3, r30, r30
    bctrl
    lwz     r8, 0(r30)
    lwz     r9, 460(r8)
    mtctr   r9
    or      r3, r30, r30
    bctrl
    lwz     r3, 508(r30)
    addi    r4, r30, 524
    lwz     r5, 76(r30)
    li      r6, 0
    bl      ext_020da780
    lis     r5, 0x1001
    lwz     r3, 508(r30)
    addi    r4, r30, 572
    addi    r5, r5, 18924
    bl      ext_020db0e4
    lis     r5, 0x1001
    lwz     r3, 508(r30)
    addi    r4, r30, 588
    addi    r5, r5, 18936
    bl      ext_020db0e4
    lis     r5, 0x1001
    lwz     r3, 508(r30)
    addi    r4, r30, 604
    addi    r5, r5, 18948
    bl      ext_020db0e4
    lwz     r9, 508(r30)
    lwz     r10, 8(r9)
    cmpwi   r10, 0
    beq     Lend
    li      r31, 0
    lis     r23, 0x1017
    lis     r21, 0x1018
    li      r22, 1
    lis     r25, 0x1018
    addi    r23, r23, 9216
    lis     r26, 0x1017
    lis     r27, 0x1017
    or      r28, r31, r31
    addi    r29, r30, 632
L398:
    cmplwi  r31, 7
    bge     Lbc
    mulli   r0, r31, 20
    add     r24, r29, r0
    lwz     r0, 3976(r27)
    cmpwi   r0, 0
    lwz     r0, 3972(r26)
    beq     L3d0
    b       L3d8
Lbc:
    lwz     r0, 3976(r27)
    or      r24, r29, r29
    cmpwi   r0, 0
    lwz     r0, 3972(r26)
    bne     L3d8
L3d0:
    stb     r28, -26421(r21)
    stw     r22, 3976(r27)
L3d8:
    cmpwi   r0, 0
    bne     L3f8
    lis     r4, 0x1015
    addi    r3, r25, -26664
    li      r5, 158
    addi    r4, r4, -15280
    stw     r22, 3972(r26)
    bl      ext_029abc88
L3f8:
    cmplwi  r31, 7
    blt     L428
    lwz     r12, 508(r30)
    or      r4, r24, r24
    li      r5, 0
    addi    r3, r12, 4
    bl      ext_0205e498
    addi    r31, r31, 1
    cmpwi   r31, 7
    bgt     Lend
    blt     L398
    b       Lend
L428:
    lbz     r0, -26421(r21)
    cmpwi   r0, 0
    bne     L448
    li      r5, 7
    addi    r4, r25, -26664
    or      r3, r23, r23
    bl      ext_026200ec
    stb     r22, -26421(r21)
L448:
    slwi    r11, r31, 2
    lwz     r12, 508(r30)
    or      r4, r24, r24
    lwzx    r5, r11, r23
    addi    r3, r12, 4
    bl      ext_0205e498
    addi    r31, r31, 1
    cmpwi   r31, 7
    bgt     Lend
    blt     L398
Lend:
    lmw     r21, 12(r1)
    lwz     r0, 60(r1)
    mtlr    r0
    addi    r1, r1, 56
    blr
