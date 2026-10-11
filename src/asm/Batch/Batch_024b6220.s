# Converted from the disassembly of 0x024b6220 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_024b6220
Batch_024b6220:
    lis     r12,4107
    stwu    r1,-24(r1)
    xoris   r10,r4,32768
    lfd     f13,-32240(r12)
    lis     r9,17200
    stw     r10,12(r1)
    stw     r9,8(r1)
    lfd     f0,8(r1)
    fsub    f0,f0,f13
    lis     r12,4107
    frsp    f13,f0
    lfs     f0,-32228(r12)
    stw     r4,76(r3)
    fdivs   f13,f0,f13
    lwz     r8,96(r3)
    stfs    f13,80(r3)
    lwz     r11,280(r8)
    stw     r11,84(r3)
    lwz     r0,284(r8)
    stw     r0,88(r3)
    lwz     r0,288(r8)
    stw     r0,92(r3)
    addi    r1,r1,24
    blr
