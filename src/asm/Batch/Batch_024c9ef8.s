# Converted from the disassembly of 0x024c9ef8 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024c9ef8
Batch_024c9ef8:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r31,52(r1)
    stw     r30,48(r1)
    mr      r30,r3
    addi    r3,r1,8
    mr      r31,r4
    stw     r0,60(r1)
    bl      ext_0248a594
    lwz     r11,0(r31)
    lwz     r12,84(r30)
    stw     r11,28(r1)
    lwz     r0,100(r12)
    mtctr   r0
    addi    r4,r1,8
    mr      r3,r30
    bctrl
    lwz     r0,60(r1)
    lwz     r31,52(r1)
    mtlr    r0
    lwz     r30,48(r1)
    addi    r1,r1,56
    blr
