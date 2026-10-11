# Converted from the disassembly of 0x02013674 (388 bytes). Name is a placeholder.
    .text
    .globl Batch_02013674
Batch_02013674:
    mflr    r0
    stwu    r1,-56(r1)
    stfd    f30,24(r1)
    ps_merge10 f30,f30,f30
    stfd    f31,40(r1)
    ps_merge10 f31,f31,f31
    stfs    f30,32(r1)
    stfs    f31,48(r1)
    stw     r0,60(r1)
    stw     r31,20(r1)
    mr      r31,r3
    bl      ext_02011d54
    lwz     r10,72(r31)
    lwz     r3,84(r10)
    bl      ext_02185c68
    lwz     r10,72(r31)
    cmpwi   r3,0
    lwz     r3,84(r10)
    beq-    L020136dc
    lis     r8,4120
    lfs     f31,-14620(r8)
    bl      ext_02185c68
    cmpwi   r3,0
    lwz     r3,72(r31)
    beq-    L02013750
    b       L020136f4
L020136dc:
    lis     r7,4120
    lfs     f31,-14628(r7)
    bl      ext_02185c68
    cmpwi   r3,0
    lwz     r3,72(r31)
    beq-    L02013750
L020136f4:
    lis     r6,4120
    lfs     f30,-14616(r6)
    bl      ext_0203052c
    lis     r9,4096
    lis     r0,17200
    lfd     f13,4336(r9)
    xoris   r8,r3,32768
    stw     r0,8(r1)
    stw     r8,12(r1)
    lfd     f12,8(r1)
    fsub    f0,f12,f13
    fsubs   f12,f31,f30
    frsp    f13,f0
    lis     r12,4096
    fmuls   f13,f12,f13
    lfs     f0,4352(r12)
    fdivs   f12,f13,f0
    lwz     r12,236(r31)
    fadds   f0,f12,f30
    cmpwi   r12,-1
    stfs    f0,220(r31)
    beq-    L020137b0
    b       L020137a8
L02013750:
    lis     r11,4120
    lfs     f30,-14624(r11)
    bl      ext_0203052c
    lis     r9,4096
    lis     r0,17200
    lfd     f13,4336(r9)
    xoris   r8,r3,32768
    stw     r0,8(r1)
    stw     r8,12(r1)
    lfd     f12,8(r1)
    fsub    f0,f12,f13
    fsubs   f12,f31,f30
    frsp    f13,f0
    lis     r12,4096
    fmuls   f13,f12,f13
    lfs     f0,4352(r12)
    fdivs   f12,f13,f0
    lwz     r12,236(r31)
    fadds   f0,f12,f30
    cmpwi   r12,-1
    stfs    f0,220(r31)
    beq-    L020137b0
L020137a8:
    addi    r9,r12,1
    stw     r9,236(r31)
L020137b0:
    li      r10,-1
    mr      r3,r31
    stw     r10,240(r31)
    bl      ext_02011db4
    cmpwi   r3,0
    beq-    L020137d0
    mr      r3,r31
    bl      ext_02012600
L020137d0:
    lwz     r31,20(r1)
    lfs     f31,48(r1)
    lfs     f30,32(r1)
    lfd     f31,40(r1)
    lfd     f30,24(r1)
    isync
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
