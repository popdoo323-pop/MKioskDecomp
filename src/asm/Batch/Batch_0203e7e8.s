# Converted from the disassembly of 0x0203e7e8 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e7e8
Batch_0203e7e8:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    fmr     f31,f1
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r3
    mr      r30,r4
    stw     r0,36(r1)
    bl      ext_0203ac64
    fmr     f1,f31
    lwz     r3,148(r31)
    mr      r4,r30
    bl      ext_0262ea48
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
