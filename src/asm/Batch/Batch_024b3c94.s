# Converted from the disassembly of 0x024b3c94 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_024b3c94
Batch_024b3c94:
    mflr    r0
    stw     r0,4(r1)
    li      r0,0
    stwu    r1,-24(r1)
    lwz     r12,52(r3)
    stw     r0,8(r1)
    lwz     r0,84(r12)
    mtctr   r0
    addi    r4,r1,8
    bctrl
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
