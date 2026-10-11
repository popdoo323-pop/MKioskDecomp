# Converted from the disassembly of 0x02033594 (444 bytes). Name is a placeholder.
    .text
    .globl Batch_02033594
Batch_02033594:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r4
    mr      r31,r5
    cmplwi  r29,4
    mr      r30,r3
    bge-    L02033734
    mr      r3,r30
    bl      ext_02033244
    mr      r3,r29
    mr      r4,r31
    bl      ext_0203339c
    mr      r3,r29
    stfs    f1,188(r30)
    bl      ext_02033498
    cmplwi  r31,2
    stfs    f1,196(r30)
    blt-    L0203367c
    beq-    L02033628
    cmplwi  r31,4
    blt-    L02033644
    beq-    L02033660
    lis     r11,4096
    lis     r12,4096
    lfs     f0,16660(r11)
    lfs     f13,16664(r12)
    stfs    f0,188(r30)
    stfs    f13,192(r30)
    stfs    f0,196(r30)
    cmpwi   r31,1
    stfs    f13,200(r30)
    bne-    L020336c8
    b       L020336a4
L02033628:
    lis     r12,4120
    lfs     f0,-12016(r12)
    lis     r11,4120
    stfs    f0,192(r30)
    lfs     f0,-12004(r11)
    stfs    f0,200(r30)
    b       L020336c8
L02033644:
    lis     r12,4120
    lfs     f0,-11988(r12)
    lis     r12,4120
    stfs    f0,192(r30)
    lfs     f0,-11972(r12)
    stfs    f0,200(r30)
    b       L020336c8
L02033660:
    lis     r11,4120
    lfs     f0,-11952(r11)
    lis     r12,4120
    stfs    f0,192(r30)
    lfs     f0,-11932(r12)
    stfs    f0,200(r30)
    b       L020336c8
L0203367c:
    lis     r11,4096
    lis     r12,4096
    lfs     f0,16660(r11)
    lfs     f13,16664(r12)
    stfs    f0,188(r30)
    stfs    f13,192(r30)
    stfs    f0,196(r30)
    cmpwi   r31,1
    stfs    f13,200(r30)
    bne-    L020336c8
L020336a4:
    stfs    f13,208(r30)
    stfs    f0,204(r30)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L020336c8:
    cmpwi   r31,3
    lis     r12,4120
    bne-    L0203370c
    cmpwi   r29,2
    bne-    L0203370c
    lis     r11,4120
    lfs     f0,-11976(r11)
    stfs    f0,204(r30)
    lfs     f0,-11924(r12)
    stfs    f0,208(r30)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L0203370c:
    lis     r11,4120
    lfs     f0,-11928(r11)
    stfs    f0,204(r30)
    lfs     f0,-11924(r12)
    clrlwi. r0,r29,31
    stfs    f0,208(r30)
    bne-    L02033734
    lfs     f0,204(r30)
    fneg    f0,f0
    stfs    f0,204(r30)
L02033734:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
