# Converted from the disassembly of 0x0203ae58 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_0203ae58
Batch_0203ae58:
    stwu    r1,-24(r1)
    lwz     r8,68(r3)
    lwz     r9,72(r3)
    cmpw    r9,r8
    lfs     f1,64(r3)
    bge-    L0203aebc
    lis     r10,17200
    xoris   r0,r9,32768
    stw     r10,8(r1)
    lis     r11,4096
    stw     r0,12(r1)
    lfd     f9,8(r1)
    lfd     f0,18416(r11)
    lfs     f13,60(r3)
    xoris   r12,r8,32768
    fsub    f10,f9,f0
    stw     r12,12(r1)
    fsubs   f9,f1,f13
    lfd     f11,8(r1)
    frsp    f8,f10
    fsub    f12,f11,f0
    fmuls   f11,f9,f8
    frsp    f12,f12
    fdivs   f0,f11,f12
    fadds   f1,f13,f0
L0203aebc:
    addi    r1,r1,24
    blr
