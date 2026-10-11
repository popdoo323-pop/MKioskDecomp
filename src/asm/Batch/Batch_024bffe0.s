# Converted from the disassembly of 0x024bffe0 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024bffe0
Batch_024bffe0:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-24(r1)
    lwz     r3,300(r3)
    cmpwi   r4,0
    lfs     f13,204(r3)
    beq-    L024c0020
    lis     r12,4107
    lfs     f0,-29836(r12)
    fadds   f0,f13,f0
    lfs     f13,208(r3)
    stfs    f13,12(r1)
    addi    r4,r1,8
    stfs    f0,8(r1)
    bl      ext_024ca530
    b       L024c0040
L024c0020:
    lis     r12,4107
    lfs     f0,-29832(r12)
    fadds   f0,f13,f0
    lfs     f13,208(r3)
    stfs    f13,12(r1)
    addi    r4,r1,8
    stfs    f0,8(r1)
    bl      ext_024ca530
L024c0040:
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
