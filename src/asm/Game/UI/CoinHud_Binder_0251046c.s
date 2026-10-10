# Coin HUD binder at 0x0251046c (568 bytes). Binds the coin counter's text panes and value. Reads the coin count from the
# kart object (+0x5c, through the global at 0x1015xxxx), looks up the value through a table at +0x4c, binds two text
# elements from the string table at 0x100b30a8 and 0x100b32b8 to 0x100b32dc, runs the animation at the end of the
# block, then calls the four helpers at 0x024800e0, 0x02510220, 0x025100bc and 0x025101a4 in sequence. External calls
# are supplied as symbols. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl CoinHud_Binder_0251046c
CoinHud_Binder_0251046c:
    stwu    r1, -208(r1)
    mflr    r0
    stfd    f31, 192(r1)
    stw     r31, 188(r1)
    ps_merge10 31, 31, 31
    stw     r29, 180(r1)
    or      r31, r3, r3
    stfs    f31, 200(r1)
    stw     r30, 184(r1)
    lis     r12, 0x1015
    stw     r0, 212(r1)
    lwz     r12, -3296(r12)
    lbz     r11, 103(r31)
    lwz     r0, 68(r12)
    cmpw    r11, r0
    li      r30, 0x0
    blt     L530
    li      r0, 0x0
    addi    r4, r1, 8
    stw     r0, 88(r31)
    lis     r29, 0x100b
    lis     r0, 0x100b
    addi    r29, r29, 12456
    addic   r0, r0, 13044
    stw     r29, 12(r1)
    or      r3, r31, r31
    stw     r0, 8(r1)
    bl      ext_024801a0
    lis     r12, 0x100b
    stw     r3, 92(r31)
    addi    r12, r12, 13056
    stw     r29, 12(r1)
    or      r3, r31, r31
    addi    r4, r1, 8
    stw     r12, 8(r1)
    bl      ext_024801a0
    lis     r7, 0x100b
    lwz     r9, 32(r31)
    lfs     f31, 12720(r7)
    stw     r3, 96(r31)
    lwz     r3, 0(r9)
    fmr     f1, f31
    li      r4, 0x0
    bl      ext_0247f968
    lwz     r0, 28(r31)
    cmplwi  r0, 3
    lwz     r11, 32(r31)
    bgt     L5c0
L52c:
    b       L5c4
L530:
    cmplw   r11, r0
    li      r0, 0x0
    bge     L548
    lwz     r9, 76(r12)
    slwi    r8, r11, 2
    lwzx    r0, r8, r9
L548:
    stw     r0, 88(r31)
    lis     r29, 0x100b
    lis     r0, 0x100b
    addi    r29, r29, 12456
    addic   r0, r0, 13044
    stw     r29, 12(r1)
    addi    r4, r1, 8
    or      r3, r31, r31
    stw     r0, 8(r1)
    bl      ext_024801a0
    lis     r12, 0x100b
    stw     r3, 92(r31)
    addi    r12, r12, 13056
    stw     r29, 12(r1)
    or      r3, r31, r31
    addi    r4, r1, 8
    stw     r12, 8(r1)
    bl      ext_024801a0
    lis     r7, 0x100b
    lwz     r9, 32(r31)
    lfs     f31, 12720(r7)
    stw     r3, 96(r31)
    lwz     r3, 0(r9)
    fmr     f1, f31
    li      r4, 0x0
    bl      ext_0247f968
    lwz     r0, 28(r31)
    cmplwi  r0, 3
    lwz     r11, 32(r31)
    ble     L52c
L5c0:
    addi    r11, r11, 12
L5c4:
    fmr     f1, f31
    lwz     r3, 0(r11)
    li      r4, 0x0
    bl      ext_0247f968
    or      r3, r31, r31
    bl      ext_024800e0
    or      r3, r31, r31
    bl      ext_02510220
    or      r3, r31, r31
    bl      ext_025100bc
    or      r3, r31, r31
    bl      ext_025101a4
    sth     r30, 36(r1)
    addi    r11, r1, 112
    sth     r30, 174(r1)
    li      r10, 32
    stw     r11, 100(r1)
    lis     r0, 0x100b
    stw     r10, 32(r1)
    addic   r0, r0, 12672
    sth     r30, 98(r1)
    addi    r8, r1, 36
    stw     r10, 108(r1)
    li      r5, 0x0
    stw     r0, 104(r1)
    addi    r3, r1, 24
    lbz     r4, 102(r31)
    stw     r8, 24(r1)
    sth     r30, 112(r1)
    stw     r0, 28(r1)
    bl      ext_02490eb8
    lis     r0, 0x100b
    lwz     r8, 28(r1)
    addic   r0, r0, 13032
    stw     r29, 20(r1)
    stw     r0, 16(r1)
    lwz     r9, 20(r8)
    mtctr   r9
    addi    r3, r1, 24
    bctrl
    lwz     r30, 24(r1)
    addi    r4, r1, 16
    or      r3, r31, r31
    bl      ext_024801a0
    or      r4, r30, r30
    bl      ext_02480bb0
    lwz     r29, 180(r1)
    lfs     f31, 200(r1)
    lwz     r30, 184(r1)
    lfd     f31, 192(r1)
    lwz     r31, 188(r1)
    isync
    lwz     r0, 212(r1)
    mtlr    r0
    addi    r1, r1, 208
    blr
