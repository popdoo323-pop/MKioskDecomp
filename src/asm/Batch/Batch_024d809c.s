# Converted from the disassembly of 0x024d809c (128 bytes). Name is a placeholder.
    .text
    .globl Batch_024d809c
Batch_024d809c:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    stw     r31,12(r1)
    lis     r11,4107
    lfs     f31,-16184(r11)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r12,32(r31)
    lwz     r3,0(r12)
    fmr     f1,f31
    li      r4,0
    bl      ext_0247f854
    lwz     r0,28(r31)
    cmplwi  r0,2
    lwz     r12,32(r31)
    ble-    L024d80ec
    addi    r12,r12,8
L024d80ec:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f854
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
