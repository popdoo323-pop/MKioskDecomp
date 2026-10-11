# Converted from the disassembly of 0x0204278c (64 bytes). Name is a placeholder.
    .text
    .globl Batch_0204278c
Batch_0204278c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    addi    r31,r3,356
    mr      r3,r31
    stw     r0,20(r1)
    bl      ext_0262b790
    li      r3,6
    bl      ext_02045d08
    mr      r3,r31
    bl      ext_0262b7c4
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
