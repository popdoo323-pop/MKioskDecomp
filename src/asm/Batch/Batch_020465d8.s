# Converted from the disassembly of 0x020465d8 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_020465d8
Batch_020465d8:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02045a98
    lwz     r0,12(r1)
    lwz     r3,376(r3)
    mtlr    r0
    addi    r1,r1,8
    blr
