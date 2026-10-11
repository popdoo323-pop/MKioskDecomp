# Converted from the disassembly of 0x0201d7dc (160 bytes). Name is a placeholder.
    .text
    .globl Batch_0201d7dc
Batch_0201d7dc:
    stwu    r1,-32(r1)
    lfs     f8,8(r4)
    psq_l   f9,0(r4),0,0
    lfs     f13,8(r5)
    psq_l   f11,0(r5),0,0
    fsubs   f7,f13,f8
    psq_l   f0,0(r6),0,0
    ps_sub  f13,f11,f9
    psq_st  f13,8(r1),0,0
    lis     r12,4096
    lfs     f11,8(r1)
    ps_sub  f12,f0,f9
    lfs     f0,9356(r12)
    lfs     f10,8(r6)
    fcmpu   cr0,f11,f0
    fsubs   f8,f10,f8
    stfs    f7,16(r1)
    li      r3,0
    bne-    L0201d834
    lfs     f10,12(r1)
    fcmpu   cr0,f10,f0
    beq-    L0201d850
L0201d834:
    ps_mul  f11,f13,f12
    lfs     f9,16(r1)
    ps_sum0 f13,f11,f11,f11
    fmadds  f12,f9,f8,f13
    fcmpu   cr0,f12,f0
    blt-    L0201d874
    b       L0201d870
L0201d850:
    lfs     f9,16(r1)
    fcmpu   cr0,f9,f0
    beq-    L0201d874
    ps_mul  f11,f13,f12
    ps_sum0 f13,f11,f11,f11
    fmadds  f12,f9,f8,f13
    fcmpu   cr0,f12,f0
    blt-    L0201d874
L0201d870:
    li      r3,1
L0201d874:
    addi    r1,r1,32
    blr
