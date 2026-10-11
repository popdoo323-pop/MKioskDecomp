# Converted from the disassembly of 0x0203cc50 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_0203cc50
Batch_0203cc50:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    mr      r30,r4
    stfs    f31,24(r1)
    fmr     f31,f1
    addi    r3,r31,36
    stw     r0,36(r1)
    bl      ext_0262ea78
    cmpwi   r3,0
    beq-    L0203cc9c
    fmr     f1,f31
    mr      r4,r30
    addi    r3,r31,36
    bl      ext_0262ea48
L0203cc9c:
    stfs    f31,44(r31)
    lfs     f31,24(r1)
    lwz     r30,8(r1)
    lfd     f31,16(r1)
    lwz     r31,12(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
