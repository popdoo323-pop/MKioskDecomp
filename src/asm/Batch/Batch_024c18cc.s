# Converted from the disassembly of 0x024c18cc (120 bytes). Name is a placeholder.
    .text
    .globl Batch_024c18cc
Batch_024c18cc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bne-    L024c18fc
    li      r3,100
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024c1928
L024c18fc:
    mr      r3,r31
    bl      ext_0248473c
    lis     r10,4107
    stw     r30,88(r31)
    addi    r10,r10,-26232
    li      r0,4
    stw     r10,84(r31)
    li      r11,0
    stw     r0,36(r31)
    stb     r11,96(r31)
    stw     r11,92(r31)
L024c1928:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
