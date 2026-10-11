# Converted from the disassembly of 0x024c79f8 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_024c79f8
Batch_024c79f8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024c7a24
    li      r3,432
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024c7a7c
L024c7a24:
    mr      r3,r31
    bl      ext_024cddf4
    lis     r0,4107
    li      r30,0
    addic   r0,r0,-20888
    stw     r30,180(r31)
    stw     r0,84(r31)
    stw     r30,184(r31)
    stw     r30,172(r31)
    addi    r3,r31,188
    stw     r30,176(r31)
    bl      ext_0248a9c4
    addi    r3,r31,236
    bl      ext_0248ab60
    addi    r3,r31,300
    bl      ext_0248ab60
    addi    r3,r31,364
    bl      ext_0248ab60
    stb     r30,428(r31)
    li      r12,4
    stb     r30,429(r31)
    stw     r12,52(r31)
L024c7a7c:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
