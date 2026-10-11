# Converted from the disassembly of 0x02003d94 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_02003d94
Batch_02003d94:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,80(r31)
    bl      ext_0201ebec
    li      r0,0
    stw     r0,344(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
