# Converted from the disassembly of 0x020460c0 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_020460c0
Batch_020460c0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r30,r4
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02045d0c
    mr      r4,r31
    mr      r5,r30
    bl      ext_02033044
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
