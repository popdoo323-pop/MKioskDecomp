# ItemCoin base initialiser at 0x0211b4c4 (872 bytes). Runs the common setup for an item object: one-time table setup,
# a call to a per-item helper (table at 0x10173be0 plus an index), exit and entry actions, and per-entry effect setup
# through the paired-single float path. External calls are supplied as symbols; the memcpy call uses the 0x029abc88
# import target stored in the original file. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl ItemCoin_BaseInit_0211b4c4
ItemCoin_BaseInit_0211b4c4:
    stwu    r1, -0x40(r1)
    stmw    r26, 0x18(r1)
    mflr    r0
    stfd    f31, 0x30(r1)
    stw     r0, 0x44(r1)
    ps_merge10 31, 31, 31
    stfs    f31, 0x38(r1)
    or      r29, r3, r3
    or      r28, r4, r4
    or      r4, r29, r29
    li      r3, 0x0
    bl      ext_02159f68
    lis     r10, 0x1017
    stw     r3, 0x14c(r29)
    lwz     r6, 0x15c(r29)
    lwz     r10, 0xde0(r10)
    addi    r27, r6, 0x1
    lis     r30, 0x1018
    cmpwi   r10, 0x0
    li      r26, 0x0
    bne     L528
    stb     r26, -0x678a(r30)
    li      r7, 0x1
    lis     r8, 0x1017
    stw     r7, 0xde0(r8)
L528:
    lis     r12, 0x1017
    lwz     r12, 0xddc(r12)
    cmpwi   r12, 0x0
    bne     L55c
    lis     r4, 0x1015
    li      r9, 0x1
    lis     r5, 0x1017
    addi    r4, r4, -0x3d88
    lis     r3, 0x1018
    stw     r9, 0xddc(r5)
    li      r5, 0x184
    addi    r3, r3, -0x69ac
    bl      ext_029abc88
L55c:
    cmplwi  r27, 0x24
    blt     L590
    stb     r26, 0xd(r1)
    li      r3, 0x0
    stb     r26, 0xc(r1)
    addi    r4, r1, 0x8
    stw     r3, 0x8(r1)
    bl      ext_020d9ec0
    lbz     r5, 0x17d(r3)
    cmpwi   r5, 0x0
    lwz     r8, 0x0(r29)
    beq     L5f0
    b       L5fc
L590:
    lbz     r0, -0x678a(r30)
    lis     r31, 0x1017
    cmpwi   r0, 0x0
    addi    r31, r31, 0x1f90
    bne     L5c0
    lis     r4, 0x1018
    or      r3, r31, r31
    li      r5, 0x24
    addi    r4, r4, -0x69ac
    bl      ext_026200ec
    li      r0, 0x1
    stb     r0, -0x678a(r30)
L5c0:
    rlwinm  r12, r27, 0x2, 0x0, 0x1d
    stb     r26, 0xc(r1)
    lwzx    r10, r12, r31
    li      r3, 0x0
    stb     r26, 0xd(r1)
    addi    r4, r1, 0x8
    stw     r10, 0x8(r1)
    bl      ext_020d9ec0
    lbz     r5, 0x17d(r3)
    cmpwi   r5, 0x0
    lwz     r8, 0x0(r29)
    bne     L5fc
L5f0:
    lbz     r7, 0x17e(r3)
    cmpwi   r7, 0x0
    beq     L600
L5fc:
    stw     r3, 0x1fc(r29)
L600:
    lwz     r9, 0x18c(r8)
    mtctr   r9
    or      r3, r29, r29
    or      r4, r28, r28
    bctrl
    lis     r3, 0x1015
    lwz     r0, 0x15c(r29)
    addi    r4, r1, 0x10
    lwz     r3, -0xcd0(r3)
    li      r5, 0x1
    stw     r0, 0x10(r1)
    bl      ext_0210e9b4
    lbz     r11, 0x35(r3)
    cmpwi   r11, 0x0
    beq     L6e8
    lwz     r11, 0x4c(r29)
    lwz     r12, 0x20(r11)
    cmpwi   r12, 0x0
    ble     L6ec
    lwz     r0, 0x20(r11)
    cmpwi   r0, 0x0
    beq     L6ec
    lwz     r6, 0x28(r11)
    lwz     r6, 0x0(r6)
    cmpwi   r6, 0x0
    beq     L6ec
    lwz     r30, 0x1fc(r29)
    cmpwi   r30, 0x0
    beq     L6ec
    lwz     r7, 0x20(r11)
    cmpwi   r7, 0x0
    li      r31, 0x0
    beq     L68c
    lwz     r8, 0x28(r11)
    lwz     r31, 0x0(r8)
L68c:
    lis     r7, 0x1017
    lwzu    r9, 0xd38(r7)
    lis     r4, 0x1017
    cmpwi   r9, 0x0
    addi    r4, r4, 0x23fc
    bne     L6b8
    lis     r11, 0x1001
    li      r10, 0x1
    addi    r11, r11, 0x4864
    stw     r10, 0x0(r7)
    stw     r11, 0x0(r4)
L6b8:
    cmpwi   r31, 0x0
    beq     L6dc
    lwz     r12, 0x64(r31)
    lwz     r0, 0xc(r12)
    mtctr   r0
    or      r3, r31, r31
    bctrl
    cmpwi   r3, 0x0
    bne     L6e0
L6dc:
    li      r31, 0x0
L6e0:
    lwz     r8, 0xe4(r31)
    stw     r8, 0x16c(r30)
L6e8:
    lwz     r11, 0x4c(r29)
L6ec:
    lwz     r30, 0x20(r11)
    cmpwi   r30, 0x0
    li      r28, 0x0
    ble     L76c
    lis     r12, 0x1001
    lfs     f31, 0x49a4(r12)
    li      r31, 0x0
L708:
    lwz     r0, 0x20(r11)
    cmplw   r28, r0
    li      r5, 0x0
    bge     L720
    lwz     r6, 0x28(r11)
    lwzx    r5, r6, r31
L720:
    lbz     r0, 0x4(r5)
    cmpwi   r0, 0x1
    ble     L754
    lwz     r8, 0x20(r11)
    cmplw   r28, r8
    li      r3, 0x0
    bge     L744
    lwz     r9, 0x28(r11)
    lwzx    r3, r9, r31
L744:
    fmr     f1, f31
    li      r5, 0x0
    li      r4, -0x1
    bl      ext_026c73d4
L754:
    addic.  r30, r30, -0x1
    addi    r28, r28, 0x1
    addi    r31, r31, 0x4
    beq     L76c
    lwz     r11, 0x4c(r29)
    b       L708
L76c:
    lwz     r10, 0x0(r29)
    lwz     r0, 0x1a4(r10)
    mtctr   r0
    or      r3, r29, r29
    bctrl
    or.     r4, r3, r3
    stw     r4, 0x5c(r29)
    beq     L798
    lis     r3, 0x1015
    lwz     r3, -0xcc4(r3)
    bl      ext_023c0f64
L798:
    lwz     r0, 0x1fc(r29)
    cmpwi   r0, 0x0
    beq     L7b8
    lwz     r6, 0x0(r29)
    lwz     r0, 0x1ec(r6)
    mtctr   r0
    or      r3, r29, r29
    bctrl
L7b8:
    or      r3, r29, r29
    bl      ext_0211b4a8
    cmpwi   r3, 0x0
    beq     L7e4
    lwz     r5, 0x15c(r29)
    li      r4, 0x1
    bl      ext_02071720
    or      r3, r29, r29
    bl      ext_0211b4a8
    or      r4, r29, r29
    bl      ext_0207172c
L7e4:
    lwz     r9, 0x0(r29)
    lwz     r0, 0x194(r9)
    mtctr   r0
    or      r3, r29, r29
    bctrl
    lwz     r12, 0x0(r29)
    lwz     r5, 0x19c(r12)
    mtctr   r5
    or      r3, r29, r29
    bctrl
    lmw     r26, 0x18(r1)
    lfs     f31, 0x38(r1)
    lfd     f31, 0x30(r1)
    isync
    lwz     r0, 0x44(r1)
    mtlr    r0
    addi    r1, r1, 0x40
    blr
