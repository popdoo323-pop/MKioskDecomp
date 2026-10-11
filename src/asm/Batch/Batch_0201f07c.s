# Converted from the disassembly of 0x0201f07c (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0201f07c
Batch_0201f07c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-24(r1)
    lwz     r10,60(r3)
    lwz     r12,56(r10)
    lhz     r0,132(r12)
    sth     r0,8(r1)
    lhz     r0,134(r12)
    addi    r4,r1,8
    sth     r0,10(r1)
    bl      ext_0201d36c
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
