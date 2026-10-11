# Converted from the disassembly of 0x024eb950 (208 bytes). Name is a placeholder.
    .text
    .globl Batch_024eb950
Batch_024eb950:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r29,12(r1)
    mr.     r31,r3
    stw     r30,16(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bne-    L024eb984
    li      r3,132
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024eba00
L024eb984:
    mr      r3,r31
    bl      ext_0248473c
    lis     r11,4107
    addi    r11,r11,-7184
    addic.  r30,r31,88
    stw     r11,84(r31)
    bne-    L024eb9b0
    li      r3,32
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L024eb9e8
L024eb9b0:
    mr.     r3,r30
    bne-    L024eb9c8
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024eb9d8
L024eb9c8:
    li      r12,0
    stw     r12,0(r3)
    stw     r12,8(r3)
    stw     r12,4(r3)
L024eb9d8:
    li      r4,5
    addi    r5,r30,12
    mr      r3,r30
    bl      ext_02601ad4
L024eb9e8:
    cmpwi   r29,0
    li      r10,6
    stb     r29,129(r31)
    beq-    L024eb9fc
    li      r10,7
L024eb9fc:
    stw     r10,36(r31)
L024eba00:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
