# Converted from the disassembly of 0x0202ebe8 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_0202ebe8
Batch_0202ebe8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,92(r31)
    bl      ext_0202d680
    lwz     r3,88(r31)
    bl      ext_020070a0
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
