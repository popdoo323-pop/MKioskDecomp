# Converted from the disassembly of 0x024b8000 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_024b8000
Batch_024b8000:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r30,24(r1)
    mr      r30,r3
    addi    r3,r1,8
    stw     r31,28(r1)
    stw     r0,36(r1)
    bl      ext_02624840
    lis     r31,4122
    addi    r3,r1,8
    lwz     r31,-25200(r31)
    bl      ext_02624878
    lis     r12,4122
    mulhwu  r11,r3,r31
    lwz     r12,-25204(r12)
    lwz     r3,56(r30)
    add     r11,r12,r11
    stw     r11,80(r30)
    bl      ext_024b7fd8
    lis     r9,4107
    add     r0,r11,r3
    lfs     f0,-32244(r9)
    stw     r0,80(r30)
    li      r0,0
    stfs    f0,60(r30)
    stb     r0,161(r30)
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    lwz     r30,24(r1)
    addi    r1,r1,32
    blr
