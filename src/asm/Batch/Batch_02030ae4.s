# Converted from the disassembly of 0x02030ae4 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_02030ae4
Batch_02030ae4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    li      r5,0
    stw     r0,20(r1)
    lwz     r3,60(r31)
    addi    r4,r4,36
    bl      ext_0202e7cc
    li      r0,0
    stb     r0,108(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
