# Converted from the disassembly of 0x020315f8 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_020315f8
Batch_020315f8:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r3,84(r3)
    bl      ext_02185ca0
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    addi    r3,r3,280
    blr
