# Converted from the disassembly of 0x024c616c (100 bytes). Name is a placeholder.
    .text
    .globl Batch_024c616c
Batch_024c616c:
    mflr    r0
    li      r10,2454
    li      r12,2456
    stw     r0,4(r1)
    li      r0,2457
    stwu    r1,-48(r1)
    stw     r0,12(r1)
    li      r0,2455
    stw     r10,28(r1)
    addi    r6,r1,8
    stw     r12,8(r1)
    li      r8,2452
    stw     r0,32(r1)
    li      r7,2451
    stw     r8,20(r1)
    li      r9,2453
    stw     r7,16(r1)
    slwi    r12,r4,2
    stw     r9,24(r1)
    lwzx    r4,r12,r6
    bl      ext_024c5b3c
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
