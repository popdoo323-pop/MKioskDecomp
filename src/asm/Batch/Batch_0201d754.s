# Converted from the disassembly of 0x0201d754 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_0201d754
Batch_0201d754:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    mr      r30,r3
    stw     r0,36(r1)
    lfs     f0,104(r30)
    lfs     f13,88(r30)
    fcmpu   cr0,f13,f0
    li      r31,0
    bge-    L0201d7c0
    lwz     r4,52(r30)
    addi    r3,r1,8
    bl      ext_0203166c
    psq_l   f13,8(r1),0,0
    psq_l   f0,92(r30),0,0
    ps_mul  f13,f0,f13
    ps_sum0 f0,f13,f13,f13
    lfs     f13,100(r30)
    fmr     f12,f0
    lfs     f0,16(r1)
    lis     r12,4096
    fmadds  f13,f13,f0,f12
    lfs     f0,9356(r12)
    fcmpu   cr0,f13,f0
    ble-    L0201d7c0
    li      r31,1
L0201d7c0:
    lwz     r0,36(r1)
    mr      r3,r31
    lwz     r31,28(r1)
    mtlr    r0
    lwz     r30,24(r1)
    addi    r1,r1,32
    blr
