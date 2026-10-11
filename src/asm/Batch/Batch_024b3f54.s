# Converted from the disassembly of 0x024b3f54 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_024b3f54
Batch_024b3f54:
    lis     r11,4124
    lis     r12,4122
    addi    r11,r11,26744
    addi    r12,r12,-24576
    psq_l   f7,0(r11),0,0
    psq_l   f8,0(r12),0,0
    ps_sub  f0,f7,f8
    psq_st  f0,152(r3),0,0
    lfs     f12,156(r3)
    lfs     f10,8(r12)
    fmuls   f11,f12,f12
    lfs     f9,8(r11)
    lfs     f13,152(r3)
    fsubs   f10,f9,f10
    lis     r12,4107
    fmadds  f8,f13,f13,f11
    lfs     f12,-32244(r12)
    fmadds  f9,f10,f10,f8
    stfs    f10,160(r3)
    fcmpu   cr0,f9,f12
    blelr-
    lis     r11,4107
    lis     r12,4107
    lfs     f13,-32220(r11)
    lfs     f0,-32216(r12)
    frsqrte f11,f9
    fmuls   f12,f11,f11
    fmuls   f7,f11,f13
    fnmsubs f12,f12,f9,f0
    fmuls   f11,f12,f7
    lfs     f9,160(r3)
    psq_l   f8,152(r3),0,0
    fmuls   f9,f9,f11
    ps_muls0 f0,f8,f11
    stfs    f9,160(r3)
    psq_st  f0,152(r3),0,0
    blr
