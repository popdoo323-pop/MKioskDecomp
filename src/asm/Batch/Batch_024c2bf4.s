# Converted from the disassembly of 0x024c2bf4 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_024c2bf4
Batch_024c2bf4:
    mflr    r0
    stwu    r1,-24(r1)
    stfd    f31,8(r1)
    lis     r12,4107
    lfs     f0,-26360(r12)
    ps_merge10 f31,f31,f31
    stfs    f31,16(r1)
    stw     r0,28(r1)
    lwz     r0,28(r3)
    fadds   f31,f1,f0
    cmplwi  r0,1
    lwz     r12,32(r3)
    ble-    L024c2c2c
    addi    r12,r12,4
L024c2c2c:
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247fc68
    fcmpu   cr0,f31,f1
    blt-    L024c2c60
    fsubs   f1,f31,f1
    lfs     f31,16(r1)
    lfd     f31,8(r1)
    isync
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
L024c2c60:
    fmr     f1,f31
    lfs     f31,16(r1)
    lfd     f31,8(r1)
    isync
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
