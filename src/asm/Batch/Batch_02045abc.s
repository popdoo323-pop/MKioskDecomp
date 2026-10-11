# Converted from the disassembly of 0x02045abc (40 bytes). Name is a placeholder.
    .text
    .globl Batch_02045abc
Batch_02045abc:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02045a98
    lwz     r3,368(r3)
    bl      ext_026337b0
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
