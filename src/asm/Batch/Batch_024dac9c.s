# Converted from the disassembly of 0x024dac9c (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024dac9c
Batch_024dac9c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,380(r31)
    lwz     r12,0(r3)
    lwz     r0,116(r12)
    mtctr   r0
    bctrl
    lwz     r3,384(r31)
    lwz     r12,0(r3)
    lwz     r0,116(r12)
    mtctr   r0
    bctrl
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
