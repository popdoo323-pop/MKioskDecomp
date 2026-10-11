# Converted from the disassembly of 0x024c8f6c (344 bytes). Name is a placeholder.
    .text
    .globl Batch_024c8f6c
Batch_024c8f6c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr.     r31,r3
    stw     r0,28(r1)
    bne-    L024c8f9c
    li      r3,348
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024c90a4
L024c8f9c:
    mr      r3,r31
    bl      ext_0248473c
    lis     r10,4107
    li      r29,0
    addi    r10,r10,-20020
    addic.  r30,r31,88
    stw     r10,84(r31)
    bne-    L024c8fcc
    li      r3,48
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L024c8fe4
L024c8fcc:
    mr      r3,r30
    bl      ext_0248a6c4
    lis     r11,4106
    stw     r29,44(r30)
    addi    r11,r11,19992
    stw     r11,40(r30)
L024c8fe4:
    addic.  r30,r31,136
    bne-    L024c8ffc
    li      r3,16
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L024c903c
L024c8ffc:
    mr.     r3,r30
    bne-    L024c9014
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024c9030
L024c9014:
    lis     r12,4107
    stw     r29,12(r3)
    addi    r12,r12,-20744
    sth     r29,8(r3)
    stw     r12,0(r3)
    sth     r29,10(r3)
    stw     r29,4(r3)
L024c9030:
    lis     r0,4107
    addic   r0,r0,-20584
    stw     r0,0(r30)
L024c903c:
    stw     r29,152(r31)
    addi    r3,r31,180
    stw     r29,172(r31)
    stw     r29,156(r31)
    stw     r29,176(r31)
    bl      ext_0248ab60
    addi    r3,r31,244
    bl      ext_0248ab60
    stw     r29,160(r31)
    lis     r9,4107
    stw     r29,168(r31)
    lis     r12,4107
    lfs     f0,-20372(r9)
    lfs     f13,-20380(r12)
    stfs    f0,344(r31)
    lis     r11,4107
    stw     r29,308(r31)
    lfs     f0,-20376(r11)
    stfs    f13,340(r31)
    stfs    f0,332(r31)
    stfs    f0,316(r31)
    stfs    f0,320(r31)
    stfs    f13,328(r31)
    stfs    f0,324(r31)
    stfs    f0,336(r31)
    stw     r29,164(r31)
L024c90a4:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
