# Converted from the disassembly of 0x024c86e4 (248 bytes). Name is a placeholder.
    .text
    .globl Batch_024c86e4
Batch_024c86e4:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    stw     r31,12(r1)
    lis     r7,4107
    lfs     f31,-22832(r7)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r8,32(r31)
    lwz     r3,0(r8)
    fmr     f1,f31
    li      r4,0
    bl      ext_0247f968
    lwz     r12,180(r31)
    lwz     r9,32(r12)
    fmr     f1,f31
    lwz     r3,0(r9)
    li      r4,0
    bl      ext_0247f968
    lwz     r12,180(r31)
    lwz     r10,28(r12)
    cmplwi  r10,1
    lwz     r12,32(r12)
    ble-    L024c8750
    addi    r12,r12,4
L024c8750:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    lwz     r12,180(r31)
    lwz     r11,28(r12)
    cmplwi  r11,2
    lwz     r10,32(r12)
    ble-    L024c8778
    addi    r10,r10,8
L024c8778:
    fmr     f1,f31
    lwz     r3,0(r10)
    li      r4,0
    bl      ext_0247f968
    lwz     r12,180(r31)
    lwz     r0,28(r12)
    cmplwi  r0,3
    lwz     r11,32(r12)
    ble-    L024c87a0
    addi    r11,r11,12
L024c87a0:
    fmr     f1,f31
    lwz     r3,0(r11)
    li      r4,0
    bl      ext_0247f968
    li      r5,0
    stb     r5,429(r31)
    stb     r5,428(r31)
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
