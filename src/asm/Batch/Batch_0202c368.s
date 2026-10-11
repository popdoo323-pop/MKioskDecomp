# Converted from the disassembly of 0x0202c368 (284 bytes). Name is a placeholder.
    .text
    .globl Batch_0202c368
Batch_0202c368:
    mflr    r0
    stwu    r1,-48(r1)
    stw     r31,44(r1)
    li      r31,0
    stw     r28,32(r1)
    stw     r30,40(r1)
    stw     r29,36(r1)
    cmpwi   r8,0
    stw     r0,52(r1)
    mr      r29,r4
    mr      r30,r6
    lwz     r28,20(r5)
    beq-    L0202c3d0
    psq_l   f0,12(r29),0,0
    psq_l   f13,12(r28),0,0
    ps_mul  f0,f13,f0
    ps_sum0 f0,f0,f0,f0
    lfs     f13,20(r28)
    fmr     f12,f0
    lfs     f0,20(r29)
    lis     r12,4120
    fmadds  f13,f13,f0,f12
    lfs     f0,-12896(r12)
    fcmpu   cr0,f13,f0
    bge-    L0202c3d0
    li      r31,1
L0202c3d0:
    addi    r3,r29,36
    addi    r4,r28,36
    bl      ext_025579b0
    lfs     f13,24(r30)
    psq_l   f12,36(r28),0,0
    fmuls   f0,f13,f13
    fcmpu   cr0,f1,f0
    psq_l   f0,12(r29),0,0
    psq_l   f13,36(r29),0,0
    ble-    L0202c3fc
    li      r31,1
L0202c3fc:
    ps_sub  f12,f12,f13
    lfs     f13,44(r29)
    psq_st  f12,8(r1),0,0
    lfs     f12,44(r28)
    lwz     r10,12(r1)
    lwz     r0,8(r1)
    fsubs   f12,f12,f13
    stw     r10,24(r1)
    stw     r0,20(r1)
    psq_l   f13,20(r1),0,0
    stfs    f12,16(r1)
    lwz     r0,16(r1)
    ps_mul  f0,f13,f0
    lfs     f13,20(r29)
    ps_sum0 f0,f0,f0,f0
    stw     r0,28(r1)
    fmr     f12,f0
    lfs     f0,28(r1)
    fmadds  f13,f0,f13,f12
    lis     r12,4120
    fabs    f0,f13
    lfs     f13,-12904(r12)
    fcmpu   cr0,f0,f13
    ble-    L0202c460
    li      r31,1
L0202c460:
    lwz     r28,32(r1)
    lwz     r29,36(r1)
    lwz     r0,52(r1)
    mr      r3,r31
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
