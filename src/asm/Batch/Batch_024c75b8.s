# Converted from the disassembly of 0x024c75b8 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024c75b8
Batch_024c75b8:
    mflr    r0
    li      r11,9084
    li      r9,9083
    li      r12,9082
    stw     r0,4(r1)
    li      r0,9081
    stwu    r1,-40(r1)
    stw     r12,12(r1)
    li      r12,9085
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
