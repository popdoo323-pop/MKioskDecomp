# Converted from the disassembly of 0x02045be8 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02045be8
Batch_02045be8:
    mflr    r0
    stwu    r1,-40(r1)
    stw     r31,36(r1)
    mr      r31,r3
    stw     r0,44(r1)
    bl      ext_02045abc
    mr      r4,r31
    addi    r5,r1,8
    bl      ext_02592440
    lwz     r0,44(r1)
    lwz     r31,36(r1)
    mtlr    r0
    lbz     r3,17(r1)
    addi    r1,r1,40
    blr
