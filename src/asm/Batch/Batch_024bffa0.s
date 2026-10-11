# Converted from the disassembly of 0x024bffa0 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024bffa0
Batch_024bffa0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_024bf7b8
    li      r12,0
    stb     r12,306(r31)
    stb     r12,307(r31)
    stb     r12,304(r31)
    stb     r12,305(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
