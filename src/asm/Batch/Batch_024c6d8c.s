# Converted from the disassembly of 0x024c6d8c (76 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6d8c
Batch_024c6d8c:
    mflr    r0
    li      r9,2313
    li      r12,2312
    stw     r0,4(r1)
    li      r10,2315
    stwu    r1,-32(r1)
    stw     r12,12(r1)
    addi    r8,r1,8
    stw     r9,16(r1)
    li      r0,2311
    stw     r10,20(r1)
    slwi    r12,r4,2
    stw     r0,8(r1)
    lwzx    r4,r12,r8
    bl      ext_024c5b3c
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
