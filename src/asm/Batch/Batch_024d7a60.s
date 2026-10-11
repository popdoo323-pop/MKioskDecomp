# Converted from the disassembly of 0x024d7a60 (156 bytes). Name is a placeholder.
    .text
    .globl Batch_024d7a60
Batch_024d7a60:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r4,0
    stwu    r1,-24(r1)
    bge-    L024d7aac
    lis     r12,4107
    lis     r11,-32768
    lfd     f0,-16608(r12)
    lis     r0,17200
    stw     r11,12(r1)
    stw     r0,8(r1)
    lfd     f13,8(r1)
    lwz     r12,32(r3)
    fsub    f0,f13,f0
    lwz     r3,0(r12)
    frsp    f1,f0
    li      r4,0
    bl      ext_0247f968
    b       L024d7aec
L024d7aac:
    cmpwi   r4,20
    ble-    L024d7ab8
    li      r4,20
L024d7ab8:
    lis     r12,4107
    xoris   r11,r4,32768
    lfd     f0,-16608(r12)
    lis     r0,17200
    stw     r11,12(r1)
    stw     r0,8(r1)
    lfd     f13,8(r1)
    lwz     r12,32(r3)
    fsub    f0,f13,f0
    lwz     r3,0(r12)
    frsp    f1,f0
    li      r4,0
    bl      ext_0247f968
L024d7aec:
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
