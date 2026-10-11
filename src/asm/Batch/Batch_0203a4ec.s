# Converted from the disassembly of 0x0203a4ec (192 bytes). Name is a placeholder.
    .text
    .globl Batch_0203a4ec
Batch_0203a4ec:
    stwu    r1,-32(r1)
    mflr    r0
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    lis     r10,4096
    stfs    f31,24(r1)
    fmr     f31,f1
    lfs     f13,18384(r10)
    fcmpu   cr0,f31,f13
    stw     r31,12(r1)
    stw     r0,36(r1)
    mr      r31,r3
    bne-    L0203a530
    lwz     r3,48(r31)
    bl      ext_02046b44
    stfs    f31,80(r31)
    b       L0203a58c
L0203a530:
    lfs     f13,80(r31)
    fcmpu   cr0,f13,f31
    beq-    L0203a570
    lis     r9,4096
    lis     r12,4096
    lfs     f12,18404(r9)
    lfs     f13,18388(r12)
    fnmsubs f0,f12,f31,f13
    lis     r12,4096
    fsubs   f12,f13,f0
    lfs     f0,18408(r12)
    fmuls   f0,f12,f0
    lwz     r8,48(r31)
    fsubs   f12,f13,f0
    stfs    f0,24(r8)
    stfs    f12,28(r8)
L0203a570:
    lwz     r3,48(r31)
    lbz     r0,16(r3)
    cmpwi   r0,0
    bne-    L0203a588
    li      r4,0
    bl      ext_02046b28
L0203a588:
    stfs    f31,80(r31)
L0203a58c:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
