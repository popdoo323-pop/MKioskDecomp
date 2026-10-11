# Converted from the disassembly of 0x024c637c (128 bytes). Name is a placeholder.
    .text
    .globl Batch_024c637c
Batch_024c637c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024c63a4
    li      r3,752
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024c63e4
L024c63a4:
    mr      r3,r31
    bl      ext_024c59a0
    lis     r12,4107
    li      r6,0
    addi    r12,r12,-22128
    li      r0,1
    addi    r3,r31,16
    stw     r12,4(r31)
    mr      r5,r6
    stb     r0,8(r31)
    bl      ext_0262cdfc
    addi    r3,r31,24
    bl      ext_024a80d8
    mr      r3,r31
    addi    r4,r31,16
    bl      ext_024c61d0
L024c63e4:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
