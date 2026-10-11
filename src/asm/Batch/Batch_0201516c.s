# Converted from the disassembly of 0x0201516c (40 bytes). Name is a placeholder.
    .text
    .globl Batch_0201516c
Batch_0201516c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_02015154
    addic   r0,r3,-1
    subfe   r3,r0,r3
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
