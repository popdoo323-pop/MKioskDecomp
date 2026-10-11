# Converted from the disassembly of 0x0200a124 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_0200a124
Batch_0200a124:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r31,104(r3)
    mr      r3,r31
    bl      ext_0200adfc
    stb     r3,8(r1)
    addi    r4,r1,8
    mr      r3,r31
    bl      ext_0200af7c
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
