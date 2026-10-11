# Converted from the disassembly of 0x0203cae4 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_0203cae4
Batch_0203cae4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bl      ext_0203c8e0
    lwz     r3,32(r31)
    mr      r4,r30
    bl      ext_0262eb8c
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
