# Converted from the disassembly of 0x024c42b8 (348 bytes). Name is a placeholder.
    .text
    .globl Batch_024c42b8
Batch_024c42b8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r0,28(r1)
    lwz     r11,28(r30)
    addi    r0,r31,5
    cmplw   r0,r11
    lwz     r12,32(r30)
    bge-    L024c42f0
    slwi    r0,r0,2
    add     r12,r12,r0
L024c42f0:
    lwz     r0,0(r5)
    cmplwi  r0,1
    lwz     r3,0(r12)
    blt-    L024c43d4
    cmplwi  r0,5
    ble-    L024c433c
    cmplwi  r0,7
    beq-    L024c438c
    lis     r11,4107
    lfs     f1,-25824(r11)
    li      r4,0
    bl      ext_0247f968
    slwi    r12,r31,2
    add     r9,r30,r12
    mr      r3,r30
    lwz     r4,96(r9)
    li      r5,0
    bl      ext_02480664
    b       L024c43fc
L024c433c:
    lis     r10,4107
    addi    r10,r10,-25553
    lis     r11,4107
    lbzx    r10,r10,r0
    lis     r0,17200
    lfd     f0,-25560(r11)
    xoris   r9,r10,32768
    stw     r0,8(r1)
    stw     r9,12(r1)
    lfd     f13,8(r1)
    fsub    f0,f13,f0
    frsp    f1,f0
    li      r4,0
    bl      ext_0247f968
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024c438c:
    lis     r11,4107
    lis     r0,17200
    li      r10,2
    lfd     f0,-25560(r11)
    xoris   r9,r10,32768
    stw     r0,8(r1)
    stw     r9,12(r1)
    lfd     f13,8(r1)
    fsub    f0,f13,f0
    frsp    f1,f0
    li      r4,0
    bl      ext_0247f968
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024c43d4:
    lis     r11,4107
    lfs     f1,-25824(r11)
    li      r4,0
    bl      ext_0247f968
    slwi    r12,r31,2
    add     r9,r30,r12
    mr      r3,r30
    lwz     r4,96(r9)
    li      r5,0
    bl      ext_02480664
L024c43fc:
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
