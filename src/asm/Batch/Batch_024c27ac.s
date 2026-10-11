# Converted from the disassembly of 0x024c27ac (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024c27ac
Batch_024c27ac:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024c27d4
    li      r3,96
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024c27f0
L024c27d4:
    mr      r3,r31
    bl      ext_0248473c
    lis     r12,4107
    li      r0,3
    addi    r12,r12,-26136
    stw     r0,36(r31)
    stw     r12,84(r31)
L024c27f0:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
