# Converted from the disassembly of 0x024bf40c (304 bytes). Name is a placeholder.
    .text
    .globl Batch_024bf40c
Batch_024bf40c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr.     r31,r3
    stw     r0,28(r1)
    bne-    L024bf43c
    li      r3,300
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024bf51c
L024bf43c:
    mr      r3,r31
    bl      ext_0248473c
    li      r29,0
    lis     r11,4107
    stw     r29,88(r31)
    addi    r11,r11,-26764
    stw     r29,92(r31)
    addi    r3,r31,96
    stw     r11,84(r31)
    bl      ext_0248ab60
    addi    r3,r31,160
    bl      ext_0248ab60
    addic.  r30,r31,224
    bne-    L024bf484
    li      r3,48
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L024bf49c
L024bf484:
    mr      r3,r30
    bl      ext_0248a6c4
    lis     r12,4106
    stw     r29,44(r30)
    addi    r12,r12,19992
    stw     r12,40(r30)
L024bf49c:
    addic.  r30,r31,272
    bne-    L024bf4b4
    li      r3,16
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L024bf4f4
L024bf4b4:
    mr.     r3,r30
    bne-    L024bf4cc
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024bf4e8
L024bf4cc:
    lis     r0,4107
    stw     r29,12(r3)
    addic   r0,r0,-31140
    sth     r29,8(r3)
    stw     r0,0(r3)
    sth     r29,10(r3)
    stw     r29,4(r3)
L024bf4e8:
    lis     r9,4107
    addi    r9,r9,-30700
    stw     r9,0(r30)
L024bf4f4:
    stw     r29,292(r31)
    li      r11,1
    stb     r29,299(r31)
    li      r10,-1
    stb     r11,296(r31)
    li      r0,7
    stw     r10,288(r31)
    stw     r0,36(r31)
    stb     r11,297(r31)
    stb     r29,298(r31)
L024bf51c:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
