# ItemCoin model loader at 0x02131994 (436 bytes). Builds the resource path "/item/ItemCoin/ItemCoin.bfres" in a frame
# buffer, loads it through the resource manager, looks up the "Wait" animation (0x02741100) and stores the handle at
# +0x304, and binds the model at +0x4c. A one-time table initialiser runs on the first call. External calls are supplied
# as symbols; the memcpy call uses the 0x04009768 alias. Written from the disassembly of the original bytes. Name is a
# placeholder.
    .text
    .globl ItemCoin_LoadModel_02131994
ItemCoin_LoadModel_02131994:
    stwu    r1, -0xf0(r1)
    mflr    r0
    stmw    r26, 0xd8(r1)
    lis     r27, 0x1001
    lis     r4, 0x1001
    or      r30, r3, r3
    addi    r27, r27, 0x5e7c
    li      r6, 0x80
    li      r31, 0x0
    stw     r0, 0xf4(r1)
    addi    r0, r1, 0x58
    stw     r6, 0x54(r1)
    addi    r3, r1, 0x4c
    stw     r0, 0x4c(r1)
    lis     r0, 0x1001
    stb     r31, 0x58(r1)
    addic   r0, r0, 0x5ed4
    stb     r31, 0xd7(r1)
    addi    r4, r4, 0x5f30
    stw     r0, 0x50(r1)
    crxor   6, 6, 6
    bl      ext_02620314
    lis     r5, 0x1000
    stw     r27, 0x34(r1)
    lis     r9, 0x1001
    addi    r5, r5, 0x178
    stw     r27, 0x2c(r1)
    addi    r9, r9, 0x5f28
    stw     r31, 0x1c(r1)
    stw     r5, 0x28(r1)
    stw     r27, 0x14(r1)
    stw     r31, 0x24(r1)
    stb     r31, 0x20(r1)
    lwz     r0, 0x4c(r1)
    stw     r9, 0x30(r1)
    stw     r0, 0x10(r1)
    li      r29, 0x1
    addi    r4, r1, 0xc
    stb     r31, 0x21(r1)
    addi    r3, r1, 0x10
    stw     r29, 0x18(r1)
    lwz     r11, 0x18(r1)
    bl      ext_0240e724
    stw     r3, 0x4c(r30)
    addi    r3, r1, 0x40
    bl      ext_0274235c
    lwz     r0, 0xc(r1)
    addi    r6, r1, 0x40
    or      r7, r31, r31
    lwz     r3, 0x4c(r30)
    or      r5, r29, r29
    addi    r4, r1, 0x8
    stw     r0, 0x8(r1)
    bl      ext_0272f1ac
    lwz     r7, 0x4c(r30)
    lwz     r0, 0x90(r7)
    lis     r12, 0x1017
    stw     r0, 0x58(r30)
    lwz     r12, 0x1f58(r12)
    addi    r26, r30, 0x304
    cmpwi   r12, 0x0
    lis     r28, 0x1018
    bne     L1aa0
    stb     r31, -0x5ec7(r28)
    li      r0, 0x1
    lis     r9, 0x1017
    stw     r0, 0x1f58(r9)
L1aa0:
    lis     r10, 0x1017
    lwzu    r0, 0x1f54(r10)
    cmpwi   r0, 0x0
    lis     r29, 0x1018
    bne     L1ad0
    li      r0, 0x1
    lis     r4, 0x1015
    subi    r3, r29, 0x5ecc
    li      r5, 0x5
    subi    r4, r4, 0x3274
    stw     r0, 0x0(r10)
    bl      ext_04009768
L1ad0:
    lbz     r0, -0x5ec7(r28)
    cmpwi   r0, 0x0
    lis     r31, 0x1017
    bne     L1af8
    li      r5, 0x1
    subi    r4, r29, 0x5ecc
    addi    r3, r31, 0x24a0
    bl      ext_026200ec
    li      r12, 0x1
    stb     r12, -0x5ec7(r28)
L1af8:
    lwz     r5, 0x24a0(r31)
    lwz     r3, 0x58(r30)
    stw     r5, 0x38(r1)
    addi    r4, r1, 0x38
    stw     r27, 0x3c(r1)
    bl      ext_02741100
    stw     r3, 0x48(r1)
    li      r4, 0x0
    stw     r3, 0x0(r26)
    lwz     r3, 0x4c(r30)
    or      r5, r4, r4
    bl      ext_0240eb08
    or      r3, r30, r30
    li      r4, 0x0
    bl      ext_0211983c
    lmw     r26, 0xd8(r1)
    lwz     r0, 0xf4(r1)
    mtlr    r0
    addi    r1, r1, 0xf0
    blr
