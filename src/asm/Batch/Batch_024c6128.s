# Converted from the disassembly of 0x024c6128 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6128
Batch_024c6128:
    mflr    r0
    stw     r0,4(r1)
    li      r12,2458
    stwu    r1,-24(r1)
    lbz     r9,8(r3)
    addi    r0,r1,8
    li      r10,2450
    xori    r11,r9,1
    stw     r12,12(r1)
    slwi    r11,r11,2
    stw     r10,8(r1)
    lwzx    r4,r11,r0
    bl      ext_024c5b3c
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
