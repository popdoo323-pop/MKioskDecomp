# Converted from the disassembly of 0x024c1b70 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_024c1b70
Batch_024c1b70:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    stw     r31,12(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r30,8(r1)
    stw     r0,36(r1)
    lwz     r9,32(r31)
    lwz     r30,0(r9)
    li      r4,1
    mr      r3,r30
    bl      ext_0247fc68
    mr      r3,r30
    li      r4,1
    bl      ext_0247f968
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024c1bc8
    addi    r12,r12,4
L024c1bc8:
    lis     r7,4107
    lfs     f31,-26364(r7)
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    lwz     r8,28(r31)
    cmplwi  r8,1
    lwz     r11,32(r31)
    ble-    L024c1bfc
    addi    r11,r11,4
L024c1bfc:
    fmr     f1,f31
    lwz     r3,0(r11)
    li      r4,1
    bl      ext_0247f968
    li      r0,0
    stb     r0,96(r31)
    lfs     f31,24(r1)
    lwz     r30,8(r1)
    lfd     f31,16(r1)
    lwz     r31,12(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
