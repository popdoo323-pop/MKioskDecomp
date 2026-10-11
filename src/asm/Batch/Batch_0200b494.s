# Converted from the disassembly of 0x0200b494 (44 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b494
Batch_0200b494:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_0200ae34
    lbz     r12,8(r3)
    addic   r0,r12,-1
    subfe   r3,r0,r12
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
