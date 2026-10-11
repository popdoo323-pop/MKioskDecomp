# Converted from the disassembly of 0x02007238 (196 bytes). Name is a placeholder.
    .text
    .globl Batch_02007238
Batch_02007238:
    mflr    r0
    stwu    r1,-40(r1)
    stw     r31,36(r1)
    lis     r8,4096
    lfs     f0,1920(r8)
    mr      r31,r3
    stw     r0,44(r1)
    lfs     f12,532(r31)
    fcmpu   cr0,f12,f0
    bne-    L02007280
    lfs     f13,536(r31)
    fcmpu   cr0,f13,f0
    bne-    L02007280
    lfs     f13,540(r31)
    fcmpu   cr0,f13,f0
    bne-    L02007280
    li      r3,0
    b       L020072e8
L02007280:
    lwz     r10,60(r31)
    lwz     r3,84(r10)
    bl      ext_02185cd8
    lwz     r12,24(r3)
    psq_l   f12,532(r31),0,0
    stw     r12,20(r1)
    lwz     r12,28(r3)
    lwz     r7,20(r1)
    stw     r12,24(r1)
    lwz     r0,32(r3)
    stw     r7,8(r1)
    stw     r12,12(r1)
    psq_l   f0,8(r1),0,0
    ps_mul  f12,f0,f12
    lfs     f11,540(r31)
    ps_sum0 f13,f12,f12,f12
    stw     r0,16(r1)
    fmr     f0,f13
    lfs     f12,16(r1)
    lis     r11,4120
    fmadds  f0,f12,f11,f0
    lfs     f13,-15400(r11)
    fcmpu   cr0,f0,f13
    stw     r0,28(r1)
    mfcr    r0
    srwi    r3,r0,31
L020072e8:
    lwz     r0,44(r1)
    lwz     r31,36(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
