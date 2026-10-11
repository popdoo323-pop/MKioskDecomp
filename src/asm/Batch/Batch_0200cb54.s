# Converted from the disassembly of 0x0200cb54 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0200cb54
Batch_0200cb54:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0200b2e4
    li      r0,3
    stw     r0,0(r3)
    mr      r3,r31
    bl      ext_0200b938
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
