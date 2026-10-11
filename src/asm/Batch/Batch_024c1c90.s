# Converted from the disassembly of 0x024c1c90 (156 bytes). Name is a placeholder.
    .text
    .globl Batch_024c1c90
Batch_024c1c90:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    stw     r0,36(r1)
    lwz     r12,32(r3)
    li      r30,0
    lwz     r31,0(r12)
    bl      ext_024804d0
    cmpwi   r3,0
    beq-    L024c1d04
    lwz     r0,4(r31)
    cmpwi   r0,0
    beq-    L024c1d00
    mr      r3,r31
    bl      ext_0247fa68
    fmr     f31,f1
    mr      r3,r31
    bl      ext_0247f9e8
    fcmpu   cr0,f31,f1
    blt-    L024c1d00
    mr      r3,r31
    bl      ext_0247fda0
    cmpwi   r3,0
    beq-    L024c1d04
L024c1d00:
    li      r30,1
L024c1d04:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    clrlwi  r3,r30,24
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
