# Converted from the disassembly of 0x024c6cf8 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6cf8
Batch_024c6cf8:
    mflr    r0
    li      r8,5
    mtctr   r8
    lis     r12,4107
    stw     r0,4(r1)
    addi    r12,r12,-23120
    stwu    r1,-56(r1)
    addi    r7,r1,4
L024c6d18:
    lwz     r11,4(r12)
    stw     r11,4(r7)
    lwzu    r0,8(r12)
    stwu    r0,8(r7)
    bdnz+   L024c6d18
    slwi    r9,r4,2
    addi    r10,r1,8
    lwzx    r4,r9,r10
    bl      ext_024c5b3c
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
