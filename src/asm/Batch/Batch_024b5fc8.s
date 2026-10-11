# Converted from the disassembly of 0x024b5fc8 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024b5fc8
Batch_024b5fc8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    li      r12,-1
    stw     r0,20(r1)
    li      r0,0
    stw     r12,380(r3)
    stb     r0,65(r3)
    stb     r0,66(r3)
    stb     r0,68(r3)
    stb     r0,64(r3)
    mr      r31,r3
    stb     r0,67(r3)
    bl      ext_024b5f3c
    mr      r3,r31
    bl      ext_024b5f78
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
