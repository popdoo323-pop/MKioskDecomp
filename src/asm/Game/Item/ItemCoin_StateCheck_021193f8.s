# ItemCoin state check at 0x021193f8 (116 bytes). Calls the shared item reset (0x02119264), then calls 0x02186040 with a
# value from a table indexed by the item's byte at +0x168. Compares the returned float with the constant at 0x10014974 and
# sets two flag bytes (+0x1f8, +0x1f9) to 1 when it is greater, else 0. External calls are supplied as symbols. Written from
# the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl ItemCoin_StateCheck_021193f8
ItemCoin_StateCheck_021193f8:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    or      r31, r3, r3
    stw     r0, 20(r1)
    bl      ext_02119264
    lis     r12, 0x1015
    lwz     r0, 360(r31)
    lwz     r12, -3284(r12)
    slwi    r11, r0, 2
    lwz     r10, 60(r12)
    lwzx    r3, r11, r10
    bl      ext_02186040
    lis     r10, 0x1001
    lfs     f0, 18804(r10)
    fcmpu   cr0, f1, f0
    ble     L44c
    li      r11, 1
    stb     r11, 505(r31)
    stb     r11, 504(r31)
    b       L458
L44c:
    li      r12, 0
    stb     r12, 504(r31)
    stb     r12, 505(r31)
L458:
    lwz     r0, 20(r1)
    lwz     r31, 12(r1)
    mtlr    r0
    addi    r1, r1, 16
    blr
