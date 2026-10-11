# Converted from the disassembly of 0x0200a1a8 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_0200a1a8
Batch_0200a1a8:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-16(r1)
    lwz     r3,104(r3)
    bl      ext_0200b0c4
    lwz     r0,20(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
