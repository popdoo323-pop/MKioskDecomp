# Converted from the disassembly of 0x0202e7cc (68 bytes). Name is a placeholder.
    .text
    .globl Batch_0202e7cc
Batch_0202e7cc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,88(r31)
    li      r6,1
    bl      ext_02006f08
    lwz     r3,92(r31)
    bl      ext_0202dd78
    lwz     r3,104(r31)
    bl      ext_02015bd4
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
