# Converted from the disassembly of 0x0204544c (80 bytes). Name is a placeholder.
    .text
    .globl Batch_0204544c
Batch_0204544c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    li      r5,0
    mr      r31,r3
    li      r4,1
    stw     r0,20(r1)
    bl      ext_02045290
    mr      r3,r31
    li      r4,2
    li      r5,1
    bl      ext_02045290
    li      r4,0
    mr      r3,r31
    bl      ext_020453d0
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
