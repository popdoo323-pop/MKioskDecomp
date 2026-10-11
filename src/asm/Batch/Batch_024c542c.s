# Converted from the disassembly of 0x024c542c (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024c542c
Batch_024c542c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r10,32(r31)
    li      r4,0
    li      r6,1
    lwz     r3,0(r10)
    mr      r5,r4
    bl      ext_0247faa4
    lwz     r9,28(r31)
    cmplwi  r9,1
    lwz     r12,32(r31)
    ble-    L024c546c
    addi    r12,r12,4
L024c546c:
    lis     r8,4107
    lwz     r3,0(r12)
    lfs     f1,-24268(r8)
    li      r4,0
    bl      ext_0247f968
    li      r0,0
    stb     r0,88(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
