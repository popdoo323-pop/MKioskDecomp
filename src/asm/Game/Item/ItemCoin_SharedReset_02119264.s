# Shared item reset at 0x02119264 (404 bytes). Called by the ItemCoin state reset (0x0211b830 via its thunk). Clears the
# item's float and flag fields. Some fields are loaded as paired-single quantised values (psq_l/psq_st) from the tables at
# 0x10010000 and 0x1001 plus offsets, and the rest from the table at 0x101c0000 plus offsets. One call to 0x020db0b4 when
# the object at +0x1fc is set. Written from the disassembly of the original bytes, decoded with the paired-single target.
# Name is a placeholder.
    .text
    .globl ItemCoin_SharedReset_02119264
ItemCoin_SharedReset_02119264:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    or      r31, r3, r3
    stw     r30, 8(r1)
    lis     r11, 0x1001
    stw     r0, 20(r1)
    lbz     r10, 427(r31)
    lfs     f13, 18804(r11)
    cmpwi   r10, 0
    li      r30, 0
    bne     L308
    lbz     r0, 45(r31)
    cmpwi   r0, 4
    beq     L300
    lis     r12, 0x1001
    addi    r12, r12, 18312
    lis     r10, 0x1001
    psq_l   f11, 0(r12), 0, 0
    lis     r12, 0x1001
    addi    r10, r10, 18304
    psq_st  f11, 96(r31), 0, 0
    psq_l   f10, 0(r10), 0, 0
    lis     r11, 0x1001
    lfs     f0, 18808(r12)
    addi    r11, r11, 18320
    psq_st  f10, 104(r31), 0, 0
    psq_l   f12, 0(r11), 0, 0
    stfs    f13, 152(r31)
    psq_st  f12, 112(r31), 0, 0
    psq_st  f10, 128(r31), 0, 0
    stfs    f13, 148(r31)
    stfs    f13, 188(r31)
    stfs    f0, 168(r31)
    stfs    f13, 144(r31)
    psq_st  f10, 120(r31), 0, 0
    stfs    f13, 192(r31)
    stfs    f13, 184(r31)
    psq_st  f11, 136(r31), 0, 0
L300:
    stb     r30, 425(r31)
    stfs    f13, 208(r31)
L308:
    stfs    f13, 172(r31)
    lis     r12, 0x101c
    stfs    f13, 176(r31)
    stfs    f13, 180(r31)
    lfsu    f10, 26768(r12)
    stfs    f10, 316(r31)
    lfs     f12, 4(r12)
    stfs    f12, 320(r31)
    lfs     f0, 8(r12)
    stfs    f13, 244(r31)
    stfs    f0, 324(r31)
    li      r0, -1
    stb     r30, 303(r31)
    lis     r11, 0x101c
    stw     r0, 432(r31)
    lfsu    f10, 26792(r11)
    stfs    f10, 436(r31)
    lfs     f11, 4(r11)
    stfs    f11, 440(r31)
    lfs     f12, 8(r11)
    lis     r10, 0x101c
    stfs    f12, 444(r31)
    lfsu    f0, 26780(r10)
    stfs    f0, 452(r31)
    lfs     f10, 4(r10)
    lwz     r3, 508(r31)
    stfs    f10, 456(r31)
    lfs     f11, 8(r10)
    stb     r30, 300(r31)
    stfs    f11, 460(r31)
    stb     r0, 448(r31)
    stw     r30, 296(r31)
    stfs    f13, 248(r31)
    stfs    f13, 256(r31)
    stb     r30, 301(r31)
    stw     r0, 236(r31)
    stb     r30, 338(r31)
    stfs    f13, 252(r31)
    stb     r30, 430(r31)
    stw     r30, 292(r31)
    cmpwi   r3, 0
    stb     r30, 302(r31)
    beq     L3c4
    bl      ext_020db0b4
    lwz     r10, 508(r31)
    lwz     r12, 140(r10)
    stb     r30, 66(r12)
L3c4:
    stw     r30, 268(r31)
    li      r12, 1
    stw     r30, 264(r31)
    stb     r12, 224(r31)
    stb     r30, 449(r31)
    stb     r30, 288(r31)
    stb     r30, 225(r31)
    lwz     r0, 20(r1)
    lwz     r30, 8(r1)
    mtlr    r0
    lwz     r31, 12(r1)
    addi    r1, r1, 16
    blr
