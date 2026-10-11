# Converted from the disassembly of 0x0203c074 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c074
Batch_0203c074:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0203bffc
    lwz     r3,92(r31)
    bl      ext_02040e90
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
