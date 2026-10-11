# Converted from the disassembly of 0x0200d130 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d130
Batch_0200d130:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4119
    stw     r0,20(r1)
    lwz     r12,-4780(r12)
    mr      r31,r3
    li      r5,1
    lwz     r3,24(r12)
    addi    r4,r31,84
    bl      ext_027b69d4
    li      r10,5
    li      r0,253
    stw     r10,80(r31)
    li      r12,0
    stw     r0,84(r31)
    li      r11,-1
    stb     r12,89(r31)
    stb     r11,92(r31)
    stb     r12,104(r31)
    stb     r11,94(r31)
    stw     r0,140(r31)
    stb     r11,93(r31)
    stb     r12,88(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
