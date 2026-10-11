# Converted from the disassembly of 0x024bc200 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc200
Batch_024bc200:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r11,84(r3)
    lwz     r0,236(r11)
    mtctr   r0
    mr      r31,r3
    bctrl
    li      r12,0
    sth     r12,220(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
