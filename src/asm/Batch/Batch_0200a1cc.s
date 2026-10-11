# Converted from the disassembly of 0x0200a1cc (36 bytes). Name is a placeholder.
    .text
    .globl Batch_0200a1cc
Batch_0200a1cc:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-16(r1)
    lwz     r3,104(r3)
    bl      ext_0200b190
    lwz     r0,20(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
