# Converted from the disassembly of 0x024b8588 (224 bytes). Name is a placeholder.
    .text
    .globl Batch_024b8588
Batch_024b8588:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r10,0(r3)
    lwz     r11,144(r10)
    lwz     r12,36(r11)
    lwz     r0,0(r12)
    extsh   r8,r0
    lwz     r10,40(r11)
    cmplw   r8,r10
    lwz     r12,44(r11)
    bge-    L024b85c8
    extsh   r0,r0
    mulli   r0,r0,12
    add     r12,r12,r0
L024b85c8:
    lwz     r9,0(r12)
    lfs     f0,60(r3)
    lis     r11,17200
    lwz     r0,16(r9)
    lis     r10,4107
    stw     r11,8(r1)
    xoris   r0,r0,32768
    lfd     f13,-32240(r10)
    stw     r0,12(r1)
    lfd     f11,8(r1)
    lis     r12,4107
    lfs     f12,-32228(r12)
    fsub    f10,f11,f13
    fadds   f1,f0,f12
    frsp    f11,f10
    lis     r10,4107
    fsubs   f13,f1,f11
    lfs     f0,-32244(r10)
    fcmpu   cr0,f13,f0
    fmr     f10,f1
    lwz     r10,0(r3)
    blt-    L024b8628
    fmr     f1,f13
    fmr     f10,f1
L024b8628:
    stfs    f10,60(r3)
    lwz     r9,144(r10)
    lwz     r8,36(r9)
    lwz     r31,12(r8)
    lwz     r11,16(r31)
    lfs     f3,8(r31)
    mtctr   r11
    lfs     f2,4(r31)
    lwz     r3,20(r31)
    bctrl
    stfs    f1,0(r31)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
