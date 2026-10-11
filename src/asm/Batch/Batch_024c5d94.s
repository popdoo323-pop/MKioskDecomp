# Converted from the disassembly of 0x024c5d94 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5d94
Batch_024c5d94:
    mflr    r0
    li      r8,3
    mtctr   r8
    lis     r12,4107
    stw     r0,4(r1)
    addi    r12,r12,-23268
    stwu    r1,-56(r1)
    addi    r6,r1,4
L024c5db4:
    lwz     r10,4(r12)
    stw     r10,4(r6)
    lwz     r0,8(r12)
    stw     r0,8(r6)
    lwzu    r7,12(r12)
    stwu    r7,12(r6)
    bdnz+   L024c5db4
    slwi    r9,r4,2
    addi    r11,r1,8
    lwzx    r4,r9,r11
    bl      ext_024c5b3c
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
