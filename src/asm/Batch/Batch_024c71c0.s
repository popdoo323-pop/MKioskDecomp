# Converted from the disassembly of 0x024c71c0 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024c71c0
Batch_024c71c0:
    mflr    r0
    li      r11,2374
    li      r9,2373
    li      r12,2372
    stw     r0,4(r1)
    li      r0,2371
    stwu    r1,-40(r1)
    stw     r12,12(r1)
    li      r12,2375
    stw     r9,16(r1)
    addi    r10,r1,8
    stw     r0,8(r1)
    stw     r11,20(r1)
    slwi    r9,r4,2
    stw     r12,24(r1)
    lwzx    r4,r9,r10
    bl      ext_024c5b3c
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
