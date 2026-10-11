# Converted from the disassembly of 0x024ec4b4 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_024ec4b4
Batch_024ec4b4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r3
    li      r5,1
    stw     r30,16(r1)
    li      r4,0
    stw     r0,28(r1)
    bl      ext_02484d54
    lis     r30,4107
    li      r4,0
    addi    r30,r30,-7896
    lis     r0,4107
    stw     r30,12(r1)
    addic   r0,r0,-7532
    addi    r5,r1,8
    stw     r0,8(r1)
    bl      ext_0247f5e8
    li      r4,1
    mr      r3,r31
    mr      r5,r4
    bl      ext_02484d54
    lis     r0,4107
    stw     r30,12(r1)
    addic   r0,r0,-7536
    li      r4,0
    addi    r5,r1,8
    stw     r0,8(r1)
    bl      ext_0247f5e8
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
