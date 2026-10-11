# Converted from the disassembly of 0x024bbd60 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_024bbd60
Batch_024bbd60:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L024bbdbc
    lis     r0,4107
    lis     r12,4107
    addic   r0,r0,-29756
    addi    r12,r12,-29500
    stw     r0,84(r30)
    mr      r3,r30
    stw     r12,100(r30)
    bl      ext_024bbd20
    addi    r3,r30,88
    li      r4,0
    bl      ext_02619378
    clrlwi. r0,r31,31
    beq-    L024bbdbc
    mr      r3,r30
    bl      ext_026014bc
L024bbdbc:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
