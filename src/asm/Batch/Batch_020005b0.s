# Converted from the disassembly of 0x020005b0 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_020005b0
Batch_020005b0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020150ac
    lwz     r10,64(r31)
    stw     r3,76(r31)
    lwz     r9,4(r10)
    lwz     r11,68(r31)
    stw     r9,80(r31)
    lwz     r0,60(r9)
    stw     r0,84(r31)
    lwz     r12,60(r11)
    lwz     r9,88(r12)
    lwz     r10,96(r9)
    stw     r10,88(r31)
    lwz     r12,60(r11)
    lwz     r0,88(r12)
    lis     r12,4117
    lwz     r3,96(r31)
    stw     r0,92(r31)
    lwz     r12,-3288(r12)
    stw     r12,104(r31)
    bl      ext_0202b290
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
