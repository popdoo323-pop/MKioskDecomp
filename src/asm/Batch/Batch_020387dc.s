# Converted from the disassembly of 0x020387dc (160 bytes). Name is a placeholder.
    .text
    .globl Batch_020387dc
Batch_020387dc:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    stw     r31,20(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,32(r1)
    mr      r31,r3
    stw     r30,16(r1)
    stw     r0,44(r1)
    lbz     r0,548(r31)
    cmpwi   r0,0
    fmr     f31,f1
    beq-    L02038858
    lis     r30,4096
    mr      r3,r31
    lis     r0,4096
    addi    r30,r30,17164
    fmr     f1,f31
    addic   r0,r0,17316
    stw     r30,12(r1)
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_0203857c
    lis     r0,4096
    fmr     f1,f31
    stw     r30,12(r1)
    addic   r0,r0,17320
    mr      r3,r31
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_0203857c
L02038858:
    lfs     f31,32(r1)
    lwz     r31,20(r1)
    lfd     f31,24(r1)
    lwz     r30,16(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
