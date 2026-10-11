# Converted from the disassembly of 0x0202e89c (100 bytes). Name is a placeholder.
    .text
    .globl Batch_0202e89c
Batch_0202e89c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r11,80(r31)
    lwz     r3,84(r11)
    bl      ext_02185cb4
    mr      r4,r3
    li      r5,0
    mr      r3,r31
    bl      ext_0202e7cc
    lbz     r0,53(r31)
    li      r11,3
    stb     r11,53(r31)
    li      r12,0
    stb     r0,54(r31)
    li      r0,1
    stw     r12,56(r31)
    stb     r0,55(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
