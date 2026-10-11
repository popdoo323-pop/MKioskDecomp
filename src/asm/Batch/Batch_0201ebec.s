# Converted from the disassembly of 0x0201ebec (104 bytes). Name is a placeholder.
    .text
    .globl Batch_0201ebec
Batch_0201ebec:
    mflr    r0
    lis     r12,4120
    stw     r0,4(r1)
    li      r0,0
    stwu    r1,-40(r1)
    lwz     r12,-13736(r12)
    stw     r0,28(r1)
    stw     r12,12(r1)
    lhz     r8,12(r1)
    stw     r12,8(r1)
    lhz     r10,10(r1)
    sth     r8,22(r1)
    sth     r10,20(r1)
    lhz     r9,8(r1)
    stb     r0,16(r1)
    sth     r9,18(r1)
    stw     r0,32(r1)
    addi    r4,r1,16
    lhz     r9,14(r1)
    stb     r0,36(r1)
    sth     r9,24(r1)
    bl      ext_0201d21c
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
