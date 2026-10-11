# Converted from the disassembly of 0x024d05d4 (412 bytes). Name is a placeholder.
    .text
    .globl Batch_024d05d4
Batch_024d05d4:
    mflr    r0
    stwu    r1,-56(r1)
    stfd    f31,40(r1)
    ps_merge10 f31,f31,f31
    stw     r31,36(r1)
    stfs    f31,48(r1)
    mr      r31,r3
    stw     r0,60(r1)
    lwz     r10,500(r31)
    cmpwi   r10,2
    bne-    L024d0750
    lfs     f0,512(r31)
    lfs     f13,516(r31)
    fcmpu   cr0,f0,f13
    lbz     r0,509(r31)
    bgt-    L024d0624
    stfs    f13,512(r31)
    li      r12,1
    fmr     f0,f13
    stb     r12,232(r31)
L024d0624:
    cmpwi   r0,0
    bne-    L024d0630
    fneg    f0,f0
L024d0630:
    lbz     r10,508(r31)
    lis     r11,4107
    cmpwi   r10,0
    lfs     f31,-20376(r11)
    beq-    L024d067c
    stfs    f0,16(r1)
    addi    r4,r1,16
    mr      r3,r31
    stfs    f31,20(r1)
    bl      ext_024cfd04
    addi    r10,r1,12
    stw     r3,12(r1)
    lswi    r0,r10,2
    addi    r11,r1,8
    stswi   r0,r11,2
    lbz     r0,8(r1)
    cmpwi   r0,0
    beq-    L024d06b0
    b       L024d06bc
L024d067c:
    stfs    f31,16(r1)
    addi    r4,r1,16
    mr      r3,r31
    stfs    f0,20(r1)
    bl      ext_024cfd04
    addi    r10,r1,12
    stw     r3,12(r1)
    lswi    r0,r10,2
    addi    r11,r1,8
    stswi   r0,r11,2
    lbz     r0,8(r1)
    cmpwi   r0,0
    bne-    L024d06bc
L024d06b0:
    lbz     r12,9(r1)
    cmpwi   r12,0
    beq-    L024d0704
L024d06bc:
    mr      r4,r31
    addi    r3,r1,24
    bl      ext_02480274
    lis     r3,4107
    lfs     f1,24(r1)
    addi    r3,r3,-20080
    bl      ext_02045eec
    li      r11,0
    stw     r11,500(r31)
    lwz     r12,500(r31)
    lfs     f31,48(r1)
    lwz     r31,36(r1)
    lfd     f31,40(r1)
    isync
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
L024d0704:
    lwz     r12,504(r31)
    lwz     r0,524(r31)
    cmplw   r12,r0
    blt-    L024d0748
    lfs     f0,512(r31)
    lfs     f13,520(r31)
    fadds   f0,f0,f13
    fsel    f0,f0,f0,f31
    stfs    f0,512(r31)
    lfs     f31,48(r1)
    lwz     r31,36(r1)
    lfd     f31,40(r1)
    isync
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
L024d0748:
    addi    r10,r12,1
    stw     r10,504(r31)
L024d0750:
    lfs     f31,48(r1)
    lwz     r31,36(r1)
    lfd     f31,40(r1)
    isync
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
