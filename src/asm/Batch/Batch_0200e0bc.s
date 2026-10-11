# Converted from the disassembly of 0x0200e0bc (132 bytes). Name is a placeholder.
    .text
    .globl Batch_0200e0bc
Batch_0200e0bc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    lis     r12,4119
    stw     r0,20(r1)
    lwz     r11,100(r3)
    lwz     r12,-4780(r12)
    lwz     r0,156(r11)
    lwz     r10,24(r12)
    mtctr   r0
    lwz     r31,164(r10)
    mr      r30,r4
    bctrl
    cmpwi   r3,0
    beq-    L0200e124
    mr      r3,r31
    mr      r4,r30
    bl      ext_027b28b8
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r3,24(r3)
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0200e124:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,0
    blr
