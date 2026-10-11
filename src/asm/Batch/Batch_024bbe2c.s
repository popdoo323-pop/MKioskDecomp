# Converted from the disassembly of 0x024bbe2c (208 bytes). Name is a placeholder.
    .text
    .globl Batch_024bbe2c
Batch_024bbe2c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024bbe58
    li      r3,244
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024bbee0
L024bbe58:
    mr      r3,r31
    bl      ext_0248473c
    addi    r3,r31,88
    bl      ext_02619210
    lis     r12,4107
    lis     r0,4107
    addi    r12,r12,-29756
    addic   r0,r0,-29500
    stw     r12,84(r31)
    addi    r3,r31,104
    stw     r0,100(r31)
    bl      ext_0248a9c4
    addi    r3,r31,152
    bl      ext_0248ab60
    li      r30,0
    stw     r30,216(r31)
    sth     r30,220(r31)
    sth     r30,222(r31)
    addic.  r3,r31,240
    stw     r30,224(r31)
    bne-    L024bbebc
    li      r3,2
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024bbec0
L024bbebc:
    sth     r30,0(r3)
L024bbec0:
    li      r0,3
    addi    r12,r31,224
    li      r10,2
    mtctr   r0
    li      r11,-1
    stw     r10,36(r31)
L024bbed8:
    stwu    r11,4(r12)
    bdnz+   L024bbed8
L024bbee0:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
