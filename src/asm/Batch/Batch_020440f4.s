# Converted from the disassembly of 0x020440f4 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_020440f4
Batch_020440f4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r30,r5
    mr.     r31,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bne-    L0204412c
    li      r3,20
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02044150
L0204412c:
    mr      r3,r31
    bl      ext_02044064
    stw     r30,12(r31)
    li      r0,0
    lis     r12,4096
    stw     r29,0(r31)
    addi    r12,r12,22500
    stb     r0,8(r31)
    stw     r12,16(r31)
L02044150:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
