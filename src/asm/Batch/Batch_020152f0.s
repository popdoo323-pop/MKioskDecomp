# Converted from the disassembly of 0x020152f0 (280 bytes). Name is a placeholder.
    .text
    .globl Batch_020152f0
Batch_020152f0:
    mflr    r0
    stwu    r1,-48(r1)
    stw     r29,36(r1)
    stw     r30,40(r1)
    stw     r31,44(r1)
    stw     r0,52(r1)
    lwz     r3,84(r3)
    mr      r30,r4
    li      r31,0
    bl      ext_02185b9c
    mr      r29,r3
    lwz     r3,84(r30)
    bl      ext_02185b9c
    mr      r30,r3
    psq_l   f0,12(r29),0,0
    psq_l   f13,12(r30),0,0
    ps_mul  f13,f13,f0
    lfs     f0,20(r29)
    ps_sum0 f12,f13,f13,f13
    lfs     f13,20(r30)
    lis     r12,4117
    fmadds  f12,f13,f0,f12
    lfs     f13,-31060(r12)
    fcmpu   cr0,f12,f13
    bge-    L02015358
    li      r31,1
L02015358:
    addi    r3,r29,36
    addi    r4,r30,36
    bl      ext_025579b0
    lis     r11,4117
    lfs     f12,-31056(r11)
    fmuls   f0,f12,f12
    fcmpu   cr0,f1,f0
    psq_l   f0,36(r29),0,0
    psq_l   f13,36(r30),0,0
    ble-    L02015384
    li      r31,1
L02015384:
    ps_sub  f12,f13,f0
    psq_st  f12,8(r1),0,0
    lwz     r9,12(r1)
    lfs     f0,44(r29)
    lfs     f13,44(r30)
    lwz     r0,8(r1)
    fsubs   f12,f13,f0
    stw     r9,24(r1)
    stw     r0,20(r1)
    stfs    f12,16(r1)
    lwz     r0,16(r1)
    psq_l   f13,20(r1),0,0
    stw     r0,28(r1)
    psq_l   f0,12(r29),0,0
    ps_mul  f12,f13,f0
    lfs     f13,20(r29)
    ps_sum0 f12,f12,f12,f12
    lfs     f11,28(r1)
    fmadds  f12,f11,f13,f12
    lis     r12,4117
    fabs    f12,f12
    lfs     f0,-31052(r12)
    fcmpu   cr0,f12,f0
    ble-    L020153e8
    li      r31,1
L020153e8:
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    mr      r3,r31
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
