# Converted from the disassembly of 0x0200b190 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b190
Batch_0200b190:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r30,r3
    mr      r31,r4
    stw     r0,28(r1)
    bl      ext_0200b148
    cmpwi   r3,0
    bne-    L0200b1e4
    lis     r12,4119
    lwz     r12,-4780(r12)
    lwz     r3,16(r12)
    lwz     r9,100(r3)
    lwz     r0,436(r9)
    mtctr   r0
    li      r4,0
    bctrl
    mr      r3,r30
    mr      r4,r31
    bl      ext_0200b148
L0200b1e4:
    lwz     r7,4(r3)
    stw     r7,8(r1)
    lwz     r0,8(r3)
    stw     r0,12(r1)
    lwz     r0,28(r1)
    lwz     r4,12(r1)
    mtlr    r0
    lwz     r31,20(r1)
    lwz     r3,8(r1)
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
