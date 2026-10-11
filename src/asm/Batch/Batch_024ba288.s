# Converted from the disassembly of 0x024ba288 (492 bytes). Name is a placeholder.
    .text
    .globl Batch_024ba288
Batch_024ba288:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024ba2b4
    li      r3,2460
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024ba458
L024ba2b4:
    lis     r12,4107
    addi    r12,r12,-32544
    addic.  r3,r31,4
    stw     r12,0(r31)
    bne-    L024ba2d8
    li      r3,1
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024ba2e0
L024ba2d8:
    li      r7,1
    stb     r7,0(r3)
L024ba2e0:
    addic.  r3,r31,5
    bne-    L024ba2f8
    li      r3,1
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024ba300
L024ba2f8:
    li      r8,2
    stb     r8,0(r3)
L024ba300:
    addic.  r3,r31,6
    bne-    L024ba318
    li      r3,1
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024ba320
L024ba318:
    li      r9,1
    stb     r9,0(r3)
L024ba320:
    addi    r3,r31,8
    bl      ext_024b4150
    addi    r3,r31,1072
    bl      ext_024b3a78
    lis     r0,4107
    addic   r0,r0,-31564
    addic.  r30,r31,1128
    stw     r0,1124(r31)
    bne-    L024ba354
    li      r3,104
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L024ba3c4
L024ba354:
    mr      r3,r30
    bl      ext_024b3a78
    li      r0,0
    lis     r11,4107
    stw     r0,64(r30)
    lis     r8,4107
    lfs     f0,-32228(r11)
    lis     r12,4107
    stw     r0,76(r30)
    addi    r12,r12,-31460
    lfs     f13,-32244(r8)
    stw     r12,52(r30)
    stfs    f13,72(r30)
    stw     r0,56(r30)
    stfs    f13,68(r30)
    stfs    f13,60(r30)
    lis     r9,4124
    stfs    f0,80(r30)
    lwzu    r10,26756(r9)
    lis     r7,4107
    stw     r10,84(r30)
    lwz     r11,4(r9)
    lfs     f0,-32120(r7)
    stw     r11,88(r30)
    lwz     r12,8(r9)
    stfs    f0,100(r30)
    stw     r12,92(r30)
    stw     r0,96(r30)
L024ba3c4:
    lis     r6,588
    addi    r3,r31,1232
    li      r4,4
    addi    r6,r6,-17940
    li      r5,160
    bl      ext_0292e4a4
    lis     r6,588
    addi    r3,r31,1872
    li      r4,2
    addi    r6,r6,-17648
    li      r5,220
    bl      ext_0292e4a4
    li      r9,1
    stb     r9,2313(r31)
    addic.  r12,r31,2316
    stb     r9,2312(r31)
    bne-    L024ba410
    li      r3,12
    bl      ext_0260128c
L024ba410:
    addic.  r0,r31,2328
    bne-    L024ba420
    li      r3,12
    bl      ext_0260128c
L024ba420:
    addic.  r0,r31,2340
    bne-    L024ba430
    li      r3,12
    bl      ext_0260128c
L024ba430:
    lis     r6,588
    addi    r3,r31,2352
    li      r4,8
    addi    r6,r6,-19340
    li      r5,12
    bl      ext_0292e4a4
    addic.  r10,r31,2448
    bne-    L024ba458
    li      r3,12
    bl      ext_0260128c
L024ba458:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
