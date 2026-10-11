# Converted from the disassembly of 0x02009660 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_02009660
Batch_02009660:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    stw     r0,36(r1)
    lwz     r12,64(r3)
    addi    r3,r12,4
    fmr     f31,f1
    bl      ext_02624878
    srwi    r0,r3,9
    lis     r12,4096
    oris    r0,r0,16256
    lfs     f0,3156(r12)
    stw     r0,8(r1)
    lfs     f13,8(r1)
    fsubs   f12,f13,f0
    fmuls   f1,f12,f31
    lfs     f31,24(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
