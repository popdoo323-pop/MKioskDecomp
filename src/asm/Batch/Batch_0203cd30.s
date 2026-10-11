# Converted from the disassembly of 0x0203cd30 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_0203cd30
Batch_0203cd30:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    stw     r30,16(r1)
    mr      r30,r4
    ps_merge10 f31,f31,f31
    stw     r31,20(r1)
    stfs    f31,32(r1)
    fmr     f31,f1
    mr      r4,r6
    mr      r31,r5
    stw     r0,44(r1)
    bl      ext_0203ccc4
    mr      r4,r3
    addi    r3,r1,8
    bl      ext_025a136c
    lwz     r3,8(r1)
    cmpwi   r3,0
    beq-    L0203cdac
    fmr     f1,f31
    mr      r5,r31
    mr      r4,r30
    bl      ext_0259e420
    lwz     r3,8(r1)
    cmpwi   r3,0
    not     r4,r30
    beq-    L0203cdac
    lis     r12,4096
    lfs     f1,19276(r12)
    mr      r5,r31
    bl      ext_0259e420
L0203cdac:
    addi    r3,r1,8
    bl      ext_025a1488
    lfs     f31,32(r1)
    lwz     r31,20(r1)
    lfd     f31,24(r1)
    lwz     r30,16(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
