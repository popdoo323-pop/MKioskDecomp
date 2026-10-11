# Converted from the disassembly of 0x020070a0 (156 bytes). Name is a placeholder.
    .text
    .globl Batch_020070a0
Batch_020070a0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,0(r3)
    lwz     r0,204(r12)
    mtctr   r0
    mr      r31,r3
    bctrl
    lwz     r10,88(r31)
    lwz     r3,60(r31)
    lwz     r4,68(r10)
    bl      ext_0203131c
    lwz     r11,88(r31)
    lwz     r3,60(r31)
    addi    r4,r11,60
    bl      ext_020314dc
    lwz     r12,88(r31)
    lwz     r3,60(r31)
    lfs     f1,36(r12)
    bl      ext_02030f98
    lwz     r9,88(r31)
    lwz     r3,60(r31)
    lfs     f1,40(r9)
    li      r4,0
    bl      ext_02030f78
    lwz     r10,88(r31)
    lwz     r3,60(r31)
    addi    r4,r10,48
    bl      ext_02031270
    lwz     r11,88(r31)
    lwz     r3,60(r31)
    lfs     f1,44(r11)
    bl      ext_02031264
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
