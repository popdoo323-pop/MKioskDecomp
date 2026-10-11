# Converted from the disassembly of 0x02002c7c (468 bytes). Name is a placeholder.
    .text
    .globl Batch_02002c7c
Batch_02002c7c:
    mflr    r0
    stwu    r1,-80(r1)
    stw     r31,76(r1)
    mr      r31,r3
    stw     r0,84(r1)
    lwz     r8,68(r31)
    lwz     r3,84(r8)
    bl      ext_02185cb4
    lfs     f10,304(r31)
    lis     r12,4120
    lwz     r9,0(r3)
    lwz     r12,-15560(r12)
    stw     r9,64(r1)
    lwz     r10,4(r3)
    lwz     r11,308(r31)
    stw     r10,68(r1)
    lwz     r6,8(r3)
    lwz     r0,312(r31)
    stw     r11,16(r1)
    stw     r0,20(r1)
    lwz     r0,40(r31)
    lwz     r8,316(r31)
    cmpw    r12,r0
    stw     r6,72(r1)
    lfs     f6,324(r31)
    stw     r8,24(r1)
    bge-    L02002cec
    mr      r0,r12
L02002cec:
    lis     r7,4096
    lis     r9,17200
    lfd     f12,216(r7)
    xoris   r10,r12,32768
    stw     r9,8(r1)
    stw     r10,12(r1)
    lfd     f0,8(r1)
    fsub    f11,f0,f12
    xoris   r0,r0,32768
    frsp    f13,f11
    stw     r0,12(r1)
    fmr     f11,f6
    lfd     f0,8(r1)
    fmr     f5,f13
    fsub    f7,f0,f12
    lis     r10,4096
    fneg    f0,f5
    lfs     f9,168(r10)
    frsp    f8,f7
    fcmpu   cr0,f0,f9
    fmr     f12,f8
    beq-    L02002d54
    fsubs   f7,f12,f5
    fmuls   f12,f11,f7
    fdivs   f7,f12,f0
    fsubs   f11,f11,f7
L02002d54:
    fcmpu   cr0,f11,f6
    bge-    L02002d60
    fmr     f6,f11
L02002d60:
    fcmpu   cr0,f10,f6
    ble-    L02002e3c
    lfs     f11,16(r1)
    fcmpu   cr0,f11,f9
    bne-    L02002d80
    lfs     f12,20(r1)
    fcmpu   cr0,f12,f9
    beq-    L02002da8
L02002d80:
    fneg    f7,f13
    lis     r9,4120
    lfs     f5,24(r1)
    fcmpu   cr0,f7,f9
    lfs     f0,-15564(r9)
    lis     r6,4120
    fsubs   f12,f10,f6
    lfs     f10,-15568(r6)
    beq-    L02002de8
    b       L02002dd4
L02002da8:
    lfs     f5,24(r1)
    fcmpu   cr0,f5,f9
    beq-    L02002e3c
    fneg    f7,f13
    lis     r9,4120
    fcmpu   cr0,f7,f9
    lfs     f0,-15564(r9)
    lis     r6,4120
    fsubs   f12,f10,f6
    lfs     f10,-15568(r6)
    beq-    L02002de8
L02002dd4:
    fsubs   f11,f10,f0
    fsubs   f13,f8,f13
    fmuls   f8,f11,f13
    fdivs   f9,f8,f7
    fadds   f0,f9,f0
L02002de8:
    fcmpu   cr0,f0,f12
    psq_l   f11,16(r1),0,0
    bge-    L02002df8
    fmr     f12,f0
L02002df8:
    ps_muls0 f10,f11,f12
    psq_st  f10,28(r1),0,0
    lwz     r9,28(r1)
    fmuls   f13,f5,f12
    lwz     r12,32(r1)
    stw     r9,40(r1)
    addi    r4,r1,40
    stfs    f13,36(r1)
    lwz     r6,36(r1)
    addi    r5,r31,332
    stw     r12,44(r1)
    addi    r3,r1,52
    stw     r6,48(r1)
    bl      ext_0254d860
    lwz     r3,68(r31)
    addi    r4,r1,52
    bl      ext_02031590
L02002e3c:
    lwz     r0,84(r1)
    lwz     r31,76(r1)
    mtlr    r0
    addi    r1,r1,80
    blr
