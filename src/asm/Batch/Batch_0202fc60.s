# Converted from the disassembly of 0x0202fc60 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_0202fc60
Batch_0202fc60:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,72(r31)
    li      r4,1
    bl      ext_020315b0
    li      r12,0
    li      r0,1
    stb     r12,64(r31)
    stb     r0,39(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
