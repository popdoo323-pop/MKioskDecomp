# Converted from the disassembly of 0x024bcbc0 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_024bcbc0
Batch_024bcbc0:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    stw     r31,12(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r30,8(r1)
    stw     r0,36(r1)
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024bcbf8
    addi    r12,r12,4
L024bcbf8:
    lis     r10,4107
    lfs     f31,-30612(r10)
    lwz     r30,0(r12)
    fmr     f1,f31
    li      r4,2
    mr      r3,r30
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    fmr     f1,f31
    mr      r3,r30
    li      r4,3
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    fmr     f1,f31
    mr      r3,r30
    li      r4,0
    bl      ext_0247f968
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
