# Converted from the disassembly of 0x0203ccd0 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_0203ccd0
Batch_0203ccd0:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    fmr     f31,f1
    mr      r31,r5
    stw     r0,36(r1)
    bl      ext_0203ccc4
    lwz     r3,0(r3)
    cmpwi   r3,0
    beq-    L0203cd10
    fmr     f1,f31
    mr      r4,r31
    bl      ext_02587df4
L0203cd10:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
