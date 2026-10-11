# Converted from the disassembly of 0x024c5304 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5304
Batch_024c5304:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r12,32(r31)
    li      r4,0
    li      r5,1
    lwz     r3,0(r12)
    fmr     f31,f1
    bl      ext_0247f800
    lwz     r12,32(r31)
    li      r4,1
    fmr     f1,f31
    lwz     r3,0(r12)
    mr      r5,r4
    bl      ext_0247f800
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
