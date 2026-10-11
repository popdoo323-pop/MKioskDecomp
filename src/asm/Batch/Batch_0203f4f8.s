# Converted from the disassembly of 0x0203f4f8 (364 bytes). Name is a placeholder.
    .text
    .globl Batch_0203f4f8
Batch_0203f4f8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lwz     r10,168(r31)
    cmpwi   r10,-1
    beq-    L0203f550
    lwz     r3,4(r31)
    bl      ext_0203b094
    lbz     r0,89(r3)
    cmpwi   r0,0
    bne-    L0203f550
    lbz     r10,222(r31)
    cmpwi   r10,0
    bne-    L0203f570
    mr      r3,r31
    bl      ext_0203f45c
    cmpwi   r3,0
    bne-    L0203f570
L0203f550:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,0
    blr
L0203f570:
    lwz     r11,44(r31)
    lwz     r0,0(r11)
    cmpwi   r0,0
    beq-    L0203f588
    lwz     r3,0(r11)
    bl      ext_02587574
L0203f588:
    mr      r3,r31
    bl      ext_0203de00
    li      r8,1
    li      r0,0
    stb     r8,220(r31)
    mr      r3,r31
    stb     r0,222(r31)
    bl      ext_0203dfd0
    lis     r12,4120
    lfs     f0,-10584(r12)
    lwz     r12,144(r31)
    stfs    f0,24(r12)
    lwz     r3,40(r31)
    lwz     r10,0(r3)
    lwz     r0,20(r10)
    lwz     r4,172(r31)
    mtctr   r0
    bctrl
    mr.     r29,r3
    beq-    L0203f600
    bl      ext_02041f68
    mr      r30,r3
    mr      r3,r29
    bl      ext_0205119c
    mr      r0,r3
    mr      r3,r30
    slwi    r30,r0,1
    bl      ext_02042680
    mr      r4,r30
    bl      ext_020395b4
L0203f600:
    lis     r12,4117
    lwz     r12,-28988(r12)
    cmpwi   r12,0
    beq-    L0203f644
    lwz     r30,260(r12)
    cmpwi   r30,0
    beq-    L0203f644
    mr      r3,r31
    bl      ext_0203d410
    lwz     r8,192(r3)
    cmpwi   r8,39
    beq-    L0203f63c
    lwz     r0,192(r3)
    cmpwi   r0,21
    bne-    L0203f644
L0203f63c:
    mr      r3,r30
    bl      ext_0204c788
L0203f644:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,1
    blr
