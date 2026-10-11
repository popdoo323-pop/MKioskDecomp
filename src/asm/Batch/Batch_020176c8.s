# Converted from the disassembly of 0x020176c8 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_020176c8
Batch_020176c8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02018804
    li      r0,0
    stb     r0,118(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
