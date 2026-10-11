# Converted from the disassembly of 0x024c2270 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024c2270
Batch_024c2270:
    mflr    r0
    lis     r12,17200
    stw     r0,4(r1)
    xoris   r0,r4,32768
    stwu    r1,-24(r1)
    stw     r12,8(r1)
    lis     r11,4107
    stw     r0,12(r1)
    lfd     f13,8(r1)
    lfd     f0,-26432(r11)
    lwz     r12,32(r3)
    fsub    f0,f13,f0
    lwz     r3,0(r12)
    frsp    f1,f0
    li      r4,0
    bl      ext_0247f968
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
