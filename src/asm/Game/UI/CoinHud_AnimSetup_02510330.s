# Coin HUD animation setup at 0x02510330 (316 bytes). Sets up the coin counter's animation groups on the HUD object:
# each group is started through the animation helper 0x02484d54 (group handle), then each named animation is played
# through 0x0247f5e8 with a two-word name struct on the stack. Names are string-table entries at 0x100b30a8 and
# 0x100b32b0 to 0x100b32dc. External calls are supplied as symbols. Written from the disassembly of the original bytes.
# Name is a placeholder.
    .text
    .globl CoinHud_AnimSetup_02510330
CoinHud_AnimSetup_02510330:
    mflr    r0
    stwu    r1, -32(r1)
    stw     r31, 28(r1)
    stw     r30, 24(r1)
    or      r31, r3, r3
    li      r4, 0x0
    stw     r29, 20(r1)
    li      r5, 0x2
    stw     r0, 36(r1)
    bl      ext_02484d54
    lis     r30, 0x100b
    or      r29, r3, r3
    lis     r10, 0x100b
    addi    r30, r30, 12456
    li      r4, 0x0
    addi    r10, r10, 12980
    stw     r30, 12(r1)
    addi    r5, r1, 8
    stw     r10, 8(r1)
    bl      ext_0247f5e8
    or      r3, r29, r29
    lis     r11, 0x100b
    stw     r30, 12(r1)
    li      r4, 0x1
    addi    r11, r11, 12976
    addi    r5, r1, 8
    stw     r11, 8(r1)
    bl      ext_0247f5e8
    li      r4, 0x1
    or      r3, r31, r31
    or      r5, r4, r4
    bl      ext_02484d54
    lis     r12, 0x100b
    addi    r5, r1, 8
    stw     r30, 12(r1)
    addi    r12, r12, 12984
    li      r4, 0x0
    stw     r12, 8(r1)
    bl      ext_0247f5e8
    or      r3, r31, r31
    li      r4, 0x2
    li      r5, 0x1
    bl      ext_02484d54
    lis     r0, 0x100b
    stw     r30, 12(r1)
    addi    r5, r1, 8
    addic   r0, r0, 12996
    li      r4, 0x0
    stw     r0, 8(r1)
    bl      ext_0247f5e8
    li      r5, 0x1
    li      r4, 0x3
    or      r3, r31, r31
    bl      ext_02484d54
    lis     r8, 0x100b
    addi    r5, r1, 8
    stw     r30, 12(r1)
    addi    r8, r8, 13008
    li      r4, 0x0
    stw     r8, 8(r1)
    bl      ext_0247f5e8
    li      r5, 0x1
    li      r4, 0x4
    or      r3, r31, r31
    bl      ext_02484d54
    lis     r0, 0x100b
    stw     r30, 12(r1)
    addic   r0, r0, 13020
    li      r4, 0x0
    addi    r5, r1, 8
    stw     r0, 8(r1)
    bl      ext_0247f5e8
    lwz     r29, 20(r1)
    lwz     r0, 36(r1)
    lwz     r31, 28(r1)
    mtlr    r0
    lwz     r30, 24(r1)
    addi    r1, r1, 32
    blr
