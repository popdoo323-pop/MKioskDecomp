# Converted from the disassembly of 0x024b715c (160 bytes). Name is a placeholder.
    .text
    .globl Batch_024b715c
Batch_024b715c:
    lis     r11,4122
    lis     r12,4124
    stwu    r1,-32(r1)
    addi    r11,r11,-24588
    addi    r12,r12,26744
    psq_l   f10,0(r11),0,0
    psq_l   f11,0(r12),0,0
    lfs     f0,8(r11)
    ps_sub  f9,f10,f11
    psq_st  f9,8(r1),0,0
    lfs     f8,12(r1)
    lfs     f11,8(r12)
    fmuls   f12,f8,f8
    lfs     f9,8(r1)
    fsubs   f0,f0,f11
    fmadds  f13,f9,f9,f12
    lis     r12,4107
    fmadds  f9,f0,f0,f13
    lfs     f13,-32244(r12)
    fcmpu   cr0,f9,f13
    stfs    f0,16(r1)
    ble-    L024b71dc
    lis     r12,4107
    lis     r11,4107
    lfs     f0,-32216(r12)
    lfs     f12,-32220(r11)
    frsqrte f10,f9
    fmuls   f11,f10,f10
    fmuls   f8,f10,f12
    fnmsubs f11,f11,f9,f0
    fmuls   f10,f11,f8
    fmuls   f9,f9,f10
L024b71dc:
    stfs    f13,68(r3)
    li      r0,0
    stw     r0,96(r3)
    stfs    f9,60(r3)
    stfs    f13,72(r3)
    stw     r0,64(r3)
    addi    r1,r1,32
    blr
