# Converted from the disassembly of 0x024bee9c (160 bytes). Name is a placeholder.
    .text
    .globl Batch_024bee9c
Batch_024bee9c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bne-    L024beecc
    li      r3,268
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024bef20
L024beecc:
    mr      r3,r31
    bl      ext_024bbe2c
    lis     r10,4107
    stb     r30,264(r31)
    addi    r10,r10,-27036
    li      r12,-1
    lis     r0,4107
    stw     r10,84(r31)
    addic   r0,r0,-26780
    stw     r12,244(r31)
    li      r9,0
    stw     r0,100(r31)
    stw     r9,252(r31)
    cmpwi   r30,0
    stw     r9,248(r31)
    stw     r9,260(r31)
    li      r0,4
    stw     r9,256(r31)
    beq-    L024bef1c
    li      r0,2
L024bef1c:
    stw     r0,36(r31)
L024bef20:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
