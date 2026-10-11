# Converted from the disassembly of 0x024be6e0 (108 bytes). Name is a placeholder.
    .text
    .globl Batch_024be6e0
Batch_024be6e0:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-24(r1)
    lwz     r0,28(r3)
    addi    r10,r4,3
    cmplw   r10,r0
    lwz     r12,32(r3)
    bge-    L024be708
    slwi    r0,r10,2
    add     r12,r12,r0
L024be708:
    lis     r10,4107
    lis     r11,17200
    addi    r9,r5,1
    lfd     f0,-30392(r10)
    xoris   r9,r9,32768
    stw     r11,8(r1)
    stw     r9,12(r1)
    lfd     f13,8(r1)
    fsub    f0,f13,f0
    lwz     r3,0(r12)
    frsp    f1,f0
    lwz     r4,4(r3)
    bl      ext_0247f968
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
