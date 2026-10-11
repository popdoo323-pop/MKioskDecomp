# Converted from the disassembly of 0x024c21f4 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_024c21f4
Batch_024c21f4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bne-    L024c2224
    li      r3,104
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024c2254
L024c2224:
    mr      r3,r31
    bl      ext_0248473c
    li      r12,0
    stw     r30,88(r31)
    lis     r0,4107
    stw     r12,92(r31)
    addic   r0,r0,-26040
    stb     r12,100(r31)
    stw     r0,84(r31)
    li      r0,4
    stw     r12,96(r31)
    stw     r0,36(r31)
L024c2254:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
