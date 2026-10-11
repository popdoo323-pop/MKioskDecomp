# Converted from the disassembly of 0x02009f30 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_02009f30
Batch_02009f30:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r12,100(r3)
    lwz     r0,68(r12)
    mtctr   r0
    bctrl
    bl      ext_0261fe9c
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
