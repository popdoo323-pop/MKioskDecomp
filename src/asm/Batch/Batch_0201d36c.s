# Converted from the disassembly of 0x0201d36c (124 bytes). Name is a placeholder.
    .text
    .globl Batch_0201d36c
Batch_0201d36c:
    mflr    r0
    lis     r12,4120
    stw     r0,4(r1)
    li      r10,0
    stwu    r1,-40(r1)
    lwz     r12,-13736(r12)
    stw     r10,20(r1)
    stw     r12,32(r1)
    lhz     r9,34(r1)
    stw     r12,36(r1)
    lhz     r6,36(r1)
    sth     r9,12(r1)
    li      r9,1
    lhz     r0,32(r1)
    lhz     r8,2(r4)
    sth     r0,10(r1)
    lhz     r0,0(r4)
    addi    r4,r1,8
    stb     r9,8(r1)
    sth     r0,10(r1)
    sth     r8,12(r1)
    stw     r10,24(r1)
    sth     r6,14(r1)
    lhz     r7,38(r1)
    stb     r10,28(r1)
    sth     r7,16(r1)
    bl      ext_0201d21c
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
