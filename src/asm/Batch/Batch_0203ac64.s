# Converted from the disassembly of 0x0203ac64 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_0203ac64
Batch_0203ac64:
    stwu    r1,-24(r1)
    lwz     r0,68(r3)
    lwz     r10,72(r3)
    cmpw    r10,r0
    lfs     f13,64(r3)
    bge-    L0203acc8
    lis     r12,4096
    xoris   r9,r10,32768
    lfd     f0,18416(r12)
    lis     r12,17200
    stw     r9,12(r1)
    stw     r12,8(r1)
    lfd     f9,8(r1)
    xoris   r8,r0,32768
    lfs     f11,60(r3)
    fsub    f10,f9,f0
    stw     r8,12(r1)
    fsubs   f9,f13,f11
    lfd     f12,8(r1)
    frsp    f8,f10
    fsub    f13,f12,f0
    fmuls   f12,f9,f8
    frsp    f0,f13
    fdivs   f0,f12,f0
    fadds   f13,f11,f0
L0203acc8:
    stfs    f13,60(r3)
    stfs    f1,64(r3)
    stw     r4,68(r3)
    li      r0,0
    stw     r0,72(r3)
    addi    r1,r1,24
    blr
