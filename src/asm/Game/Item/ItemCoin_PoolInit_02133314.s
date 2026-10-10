# ItemCoin pool initialiser at 0x02133314 (376 bytes). Sets up the pool named "ItemCoin" (string at 0x101063b0), fills
# the item-id table from a count taken from the kart object, and creates one ItemCoin per slot through the create wrapper
# (0x02133970). External calls are supplied as symbols. Written from the disassembly of the original bytes. Name is a
# placeholder.
    .text
    .globl ItemCoin_PoolInit_02133314
ItemCoin_PoolInit_02133314:
    mflr    r0
    stwu    r1, -0x18(r1)
    stw     r30, 0x10(r1)
    or      r30, r3, r3
    lis     r4, 0x1001
    addi    r3, r30, 0x38
    addi    r4, r4, 0x63b0
    stw     r31, 0x14(r1)
    stw     r0, 0x1c(r1)
    crxor   6, 6, 6
    bl      ext_02620314
    li      r0, 0x7
    addi    r3, r1, 0xc
    stw     r0, 0xc(r1)
    bl      ext_0215d9dc
    or.     r31, r3, r3
    stw     r3, 0x94(r30)
    ble     L398
    lis     r3, 0x1015
    lwz     r3, 0x265c(r3)
    bl      ext_0261c858
    lwz     r6, 0xc(r3)
    lwz     r7, 0x34(r6)
    mtctr   r7
    li      r5, 0x40
    rlwinm  r4, r31, 0x2, 0x0, 0x1d
    bctrl
    cmpwi   r31, 0x0
    or      r0, r31, r31
    bgt     L390
    li      r0, 0x1
L390:
    cmpwi   r3, 0x0
    bne     Lac
L398:
    lwz     r7, 0x24(r30)
    cmpwi   r7, 0x0
    addi    r31, r30, 0x24
    ble     Le0
    b       Lc4
Lac:
    stw     r31, 0x24(r30)
    lwz     r7, 0x24(r30)
    addi    r31, r30, 0x24
    cmpwi   r7, 0x0
    stw     r3, 0x28(r30)
    ble     Le0
Lc4:
    li      r11, 0x0
    mtctr   r7
    or      r5, r11, r11
L3d0:
    lwz     r8, 0x4(r31)
    stwx    r5, r8, r11
    addi    r11, r11, 0x4
    bdnz    L3d0
Le0:
    lwz     r12, 0x94(r30)
    li      r0, 0x0
    stw     r0, 0x30(r30)
    cmpw    r0, r12
    stw     r0, 0x8(r1)
    bge     L474
Lf8:
    addi    r3, r1, 0x8
    bl      ext_02133970
    or      r9, r3, r3
    stw     r30, 0x4(r9)
    lwz     r5, 0x8(r30)
    stw     r5, 0x8(r9)
    lwz     r11, 0x30(r30)
    lwz     r0, 0x0(r31)
    cmplw   r11, r0
    lwz     r10, 0x4(r31)
    bge     L42c
    rlwinm  r8, r11, 0x2, 0x0, 0x1d
    add     r10, r10, r8
L42c:
    lwz     r10, 0x0(r10)
    cmpwi   r10, 0x0
    bne     L45c
    addi    r12, r11, 0x1
    stw     r12, 0x30(r30)
    lwz     r0, 0x0(r31)
    cmplw   r11, r0
    lwz     r12, 0x4(r31)
    bge     L458
    rlwinm  r6, r11, 0x2, 0x0, 0x1d
    add     r12, r12, r6
L458:
    stw     r9, 0x0(r12)
L45c:
    lwz     r7, 0x8(r1)
    lwz     r0, 0x94(r30)
    addi    r7, r7, 0x1
    cmpw    r7, r0
    stw     r7, 0x8(r1)
    blt     Lf8
L474:
    lwz     r0, 0x1c(r1)
    lwz     r30, 0x10(r1)
    mtlr    r0
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    blr
