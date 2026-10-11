# Converted from the disassembly of 0x02044420 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02044420
Batch_02044420:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stfs    f31,24(r1)
    fmr     f31,f1
    mr      r30,r4
    stw     r0,36(r1)
    bne-    L02044460
    li      r3,16
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0204447c
L02044460:
    mr      r3,r31
    bl      ext_02044064
    lis     r0,4096
    stw     r30,0(r31)
    addic   r0,r0,22564
    stfs    f31,8(r31)
    stw     r0,12(r31)
L0204447c:
    lfs     f31,24(r1)
    mr      r3,r31
    lwz     r30,8(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
