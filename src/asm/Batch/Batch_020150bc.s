# Converted from the disassembly of 0x020150bc (48 bytes). Name is a placeholder.
    .text
    .globl Batch_020150bc
Batch_020150bc:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_020fe084
    lwz     r12,0(r3)
    lwz     r0,36(r12)
    mtctr   r0
    bctrl
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
