# Converted from the disassembly of 0x02026544 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_02026544
Batch_02026544:
    mflr    r0
    stwu    r1,-48(r1)
    stw     r31,44(r1)
    mr      r31,r3
    stw     r0,52(r1)
    bl      ext_020150ac
    lis     r12,4120
    li      r8,0
    stw     r3,36(r31)
    lwz     r12,-13412(r12)
    stb     r8,28(r1)
    stw     r12,36(r1)
    lhz     r7,38(r1)
    stw     r12,32(r1)
    lhz     r0,32(r1)
    sth     r7,16(r1)
    sth     r0,10(r1)
    li      r9,1
    lhz     r0,72(r31)
    stb     r9,8(r1)
    sth     r0,10(r1)
    stw     r8,24(r1)
    lhz     r10,34(r1)
    lhz     r6,36(r1)
    sth     r10,12(r1)
    sth     r6,14(r1)
    mr      r3,r31
    lhz     r10,74(r31)
    stw     r8,20(r1)
    addi    r4,r1,8
    sth     r10,12(r1)
    bl      ext_020263f0
    lwz     r0,52(r1)
    lwz     r31,44(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
