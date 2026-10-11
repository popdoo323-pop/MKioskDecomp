# Converted from the disassembly of 0x0200e5f4 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_0200e5f4
Batch_0200e5f4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,100(r3)
    lwz     r0,124(r12)
    mtctr   r0
    mr      r31,r3
    bctrl
    cmpwi   r3,-1
    stb     r3,8(r1)
    bne-    L0200e63c
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    li      r3,0
    blr
L0200e63c:
    lis     r12,4119
    lwz     r12,-4780(r12)
    lwz     r11,24(r12)
    lwz     r3,164(r11)
    addi    r4,r1,8
    bl      ext_027b1228
    mr      r4,r3
    lwz     r5,36(r4)
    mr      r3,r31
    bl      ext_0200e4fc
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
