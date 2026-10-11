# Converted from the disassembly of 0x024ec408 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_024ec408
Batch_024ec408:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r4
    cmpwi   r31,-1
    mr      r30,r3
    stw     r0,28(r1)
    lwz     r4,124(r3)
    bne-    L024ec450
    li      r5,0
    bl      ext_02480664
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024ec450:
    li      r5,1
    bl      ext_02480664
    lwz     r0,28(r30)
    cmplwi  r0,5
    lwz     r12,32(r30)
    ble-    L024ec46c
    addi    r12,r12,20
L024ec46c:
    lis     r10,4107
    lis     r11,17200
    lfd     f0,-7544(r10)
    xoris   r0,r31,32768
    stw     r11,8(r1)
    stw     r0,12(r1)
    lfd     f13,8(r1)
    fsub    f0,f13,f0
    frsp    f1,f0
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
