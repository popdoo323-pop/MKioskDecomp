# Converted from the disassembly of 0x024bb4a0 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024bb4a0
Batch_024bb4a0:
    lfs     f9,4(r3)
    lfs     f11,0(r3)
    fmuls   f9,f9,f9
    fmadds  f11,f11,f11,f9
    lfs     f10,8(r3)
    lis     r12,4107
    fmadds  f1,f10,f10,f11
    lfs     f13,-32244(r12)
    fcmpu   cr0,f1,f13
    blelr-
    lis     r12,4107
    lfs     f0,-32216(r12)
    lis     r12,4107
    lfs     f12,-32220(r12)
    frsqrte f11,f1
    fmuls   f13,f11,f11
    fmuls   f10,f11,f12
    fnmsubs f13,f13,f1,f0
    fmuls   f11,f13,f10
    psq_l   f13,0(r3),0,0
    lfs     f0,8(r3)
    ps_muls0 f12,f13,f11
    fmuls   f0,f0,f11
    psq_st  f12,0(r3),0,0
    fmuls   f1,f1,f11
    stfs    f0,8(r3)
    blr
