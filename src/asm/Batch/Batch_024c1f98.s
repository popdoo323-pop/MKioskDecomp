# Converted from the disassembly of 0x024c1f98 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_024c1f98
Batch_024c1f98:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r7,32(r31)
    lwz     r6,0(r7)
    lwz     r9,4(r6)
    cmpwi   r9,0
    bne-    L024c2040
    li      r4,1
    lwz     r3,0(r7)
    li      r5,0
    mr      r6,r4
    bl      ext_0247faa4
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024c1ff4
    addi    r12,r12,4
L024c1ff4:
    lis     r8,4107
    lfs     f31,-26364(r8)
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r11,32(r31)
    ble-    L024c2028
    addi    r11,r11,4
L024c2028:
    fmr     f1,f31
    lwz     r3,0(r11)
    li      r4,1
    bl      ext_0247f968
    li      r12,1
    stb     r12,96(r31)
L024c2040:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
