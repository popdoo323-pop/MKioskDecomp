# Converted from the disassembly of 0x024c2310 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_024c2310
Batch_024c2310:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-24(r1)
    lwz     r0,28(r3)
    stw     r4,92(r3)
    cmplwi  r0,2
    lwz     r12,32(r3)
    ble-    L024c2334
    addi    r12,r12,8
L024c2334:
    lis     r11,4107
    xoris   r0,r4,32768
    lfd     f0,-26432(r11)
    lis     r11,17200
    stw     r0,12(r1)
    stw     r11,8(r1)
    lfd     f13,8(r1)
    fsub    f0,f13,f0
    frsp    f1,f0
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
