# Converted from the disassembly of 0x020384b4 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_020384b4
Batch_020384b4:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02632c9c
    bl      ext_02041f68
    bl      ext_020428ec
    bl      ext_0203d0a0
    bl      ext_02041f68
    bl      ext_020428f4
    bl      ext_0203320c
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
