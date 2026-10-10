# ItemCoin constructor at 0x02131904 (144 bytes). If the object pointer is null it allocates 0x320 bytes first, returns
# null on failure. Then calls the base initialiser (0x021188a4) with type id 7, stores the vtable 0x10015fd8 at +0x0,
# calls 0x0292e4a4 and 0x02131900. External calls supplied as symbols. Written from the disassembly of the original bytes.
# Name is a placeholder.
    .text
    .globl ItemCoin_Ctor_02131904
ItemCoin_Ctor_02131904:
    mflr    r0
    stwu    r1, -0x18(r1)
    stw     r30, 0x10(r1)
    stw     r31, 0x14(r1)
    or.     r31, r3, r3
    or      r30, r4, r4
    stw     r0, 0x1c(r1)
    bne     L934
    li      r3, 0x320
    bl      ext_0260128c
    or.     r31, r3, r3
    beq     L978
L934:
    li      r12, 0x7
    or      r3, r31, r31
    or      r5, r30, r30
    addi    r4, r1, 0x8
    stw     r12, 0x8(r1)
    bl      ext_021188a4
    lis     r0, 0x1001
    lis     r6, 0x213
    addi    r3, r31, 0x304
    addic   r0, r0, 0x5fd8
    addi    r6, r6, 0x2fb0
    li      r4, 0x1
    li      r5, 0x4
    stw     r0, 0x0(r31)
    bl      ext_0292e4a4
    or      r3, r31, r31
    bl      ext_02131900
L978:
    lwz     r0, 0x1c(r1)
    or      r3, r31, r31
    lwz     r31, 0x14(r1)
    mtlr    r0
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    blr
