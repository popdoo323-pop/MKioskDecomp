# Converted from the disassembly of 0x02033750 (272 bytes). Name is a placeholder.
    .text
    .globl Batch_02033750
Batch_02033750:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    stw     r31,12(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    mr.     r31,r3
    stw     r30,8(r1)
    stw     r0,36(r1)
    bne-    L02033788
    li      r3,280
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02033838
L02033788:
    cmpwi   r31,0
    bne-    L02033798
    li      r3,48
    bl      ext_0260128c
L02033798:
    addic.  r10,r31,48
    bne-    L020337a8
    li      r3,12
    bl      ext_0260128c
L020337a8:
    addic.  r0,r31,60
    bne-    L020337b8
    li      r3,12
    bl      ext_0260128c
L020337b8:
    lis     r10,4096
    lfs     f31,16664(r10)
    li      r30,0
    fmr     f1,f31
    stw     r30,76(r31)
    addi    r3,r31,88
    bl      ext_0262eef8
    fmr     f1,f31
    addi    r3,r31,112
    bl      ext_0262eef8
    fmr     f1,f31
    addi    r3,r31,136
    bl      ext_0262eef8
    fmr     f1,f31
    addi    r3,r31,160
    bl      ext_0262eef8
    stb     r30,273(r31)
    lis     r12,4096
    stb     r30,275(r31)
    li      r5,1
    stw     r30,268(r31)
    li      r11,-1
    stw     r30,260(r31)
    lfs     f0,16660(r12)
    stw     r11,184(r31)
    mr      r3,r31
    stb     r30,274(r31)
    stb     r30,272(r31)
    stb     r30,276(r31)
    mr      r4,r30
    stfs    f0,264(r31)
    bl      ext_02033594
L02033838:
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
