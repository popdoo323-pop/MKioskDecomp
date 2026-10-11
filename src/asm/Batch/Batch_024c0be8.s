# Converted from the disassembly of 0x024c0be8 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_024c0be8
Batch_024c0be8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L024c0c30
    lis     r0,4107
    mr      r3,r30
    addic   r0,r0,-29228
    li      r4,0
    stw     r0,100(r30)
    bl      ext_024bbd60
    clrlwi. r0,r31,31
    beq-    L024c0c30
    mr      r3,r30
    bl      ext_026014bc
L024c0c30:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
