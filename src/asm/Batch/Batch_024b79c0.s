# Converted from the disassembly of 0x024b79c0 (300 bytes). Name is a placeholder.
    .text
    .globl Batch_024b79c0
Batch_024b79c0:
    mflr    r0
    stwu    r1,-32(r1)
    lis     r12,4122
    addi    r12,r12,-24588
    stw     r31,28(r1)
    lis     r11,4124
    stw     r30,24(r1)
    addi    r11,r11,26744
    stw     r0,36(r1)
    psq_l   f10,0(r12),0,0
    psq_l   f11,0(r11),0,0
    lfs     f13,8(r11)
    ps_sub  f9,f10,f11
    lfs     f12,8(r12)
    fsubs   f1,f12,f13
    psq_st  f9,8(r1),0,0
    lfs     f2,8(r1)
    fmuls   f0,f1,f1
    lis     r12,4107
    fmadds  f9,f2,f2,f0
    lfs     f13,-32244(r12)
    fcmpu   cr0,f9,f13
    stfs    f1,16(r1)
    mr      r31,r4
    mr      r30,r3
    ble-    L024b7a54
    lis     r12,4107
    lfs     f12,-32220(r12)
    lis     r12,4107
    lfs     f0,-32216(r12)
    frsqrte f13,f9
    fmuls   f10,f13,f13
    fmuls   f11,f13,f12
    fnmsubs f10,f10,f9,f0
    fmuls   f13,f10,f11
    lfs     f2,8(r1)
    lfs     f1,16(r1)
L024b7a54:
    fmuls   f9,f13,f9
    li      r12,2
    cmpwi   r31,0
    stfs    f9,60(r30)
    bne-    L024b7a70
    lis     r12,4122
    lwz     r12,-25284(r12)
L024b7a70:
    stw     r12,64(r30)
    lis     r12,4122
    lfs     f10,-25288(r12)
    lis     r12,4107
    lfs     f11,-32212(r12)
    fmuls   f0,f10,f11
    stfs    f0,68(r30)
    bl      ext_02933a8c
    lwz     r12,52(r30)
    stfs    f1,72(r30)
    lwz     r0,44(r12)
    mtctr   r0
    mr      r3,r30
    bctrl
    cmpwi   r31,0
    lwz     r3,56(r30)
    bne-    L024b7ad0
    bl      ext_024b79b0
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
L024b7ad0:
    bl      ext_024b79b8
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
