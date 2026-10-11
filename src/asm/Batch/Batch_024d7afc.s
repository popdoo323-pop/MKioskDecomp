# Converted from the disassembly of 0x024d7afc (100 bytes). Name is a placeholder.
    .text
    .globl Batch_024d7afc
Batch_024d7afc:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-24(r1)
    lwz     r10,28(r3)
    cmplwi  r10,1
    lwz     r12,32(r3)
    ble-    L024d7b1c
    addi    r12,r12,4
L024d7b1c:
    lis     r10,4107
    lis     r11,17200
    addi    r0,r4,1
    lfd     f0,-16608(r10)
    xoris   r0,r0,32768
    stw     r11,8(r1)
    stw     r0,12(r1)
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
