# Converted from the disassembly of 0x0203a2a4 (416 bytes). Name is a placeholder.
    .text
    .globl Batch_0203a2a4
Batch_0203a2a4:
    stwu    r1,-56(r1)
    stfd    f31,40(r1)
    ps_merge10 f31,f31,f31
    mflr    r0
    stfd    f30,24(r1)
    ps_merge10 f30,f30,f30
    stw     r30,16(r1)
    mr.     r30,r3
    stfs    f31,48(r1)
    stfs    f30,32(r1)
    stw     r31,20(r1)
    stw     r29,12(r1)
    stw     r0,60(r1)
    bne-    L0203a2ec
    li      r3,92
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L0203a410
L0203a2ec:
    mr      r3,r30
    bl      ext_02410f5c
    lis     r0,4096
    addic   r0,r0,18232
    stw     r0,0(r30)
    bl      ext_02045a98
    mr.     r4,r3
    beq-    L0203a310
    addi    r4,r4,4
L0203a310:
    addi    r3,r30,36
    bl      ext_02054620
    lis     r0,4096
    addic   r0,r0,18448
    stw     r0,0(r30)
    bl      ext_02041f68
    bl      ext_020428ec
    li      r4,0
    bl      ext_0203ccc4
    stw     r3,44(r30)
    li      r3,36
    bl      ext_0260128c
    lis     r12,4096
    lis     r11,4096
    lfs     f31,18384(r12)
    mr.     r31,r3
    lfs     f30,18388(r11)
    beq-    L0203a384
    mr.     r29,r31
    bne-    L0203a370
    li      r3,32
    bl      ext_0260128c
    mr.     r29,r3
    beq-    L0203a380
L0203a370:
    mr      r3,r29
    bl      ext_020468b4
    stfs    f31,28(r29)
    stfs    f30,24(r29)
L0203a380:
    stfs    f31,32(r31)
L0203a384:
    stw     r31,48(r30)
    li      r31,0
    stw     r31,52(r30)
    addic.  r3,r30,60
    stw     r31,56(r30)
    bne-    L0203a3ac
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0203a3bc
L0203a3ac:
    stfs    f31,4(r3)
    stw     r31,8(r3)
    stfs    f31,0(r3)
    stw     r31,12(r3)
L0203a3bc:
    lwz     r10,48(r30)
    lis     r11,4096
    stfs    f31,80(r30)
    lfs     f13,18392(r11)
    stfs    f30,60(r30)
    lis     r12,4096
    stw     r31,72(r30)
    stb     r31,84(r30)
    stw     r31,68(r30)
    stfs    f31,76(r30)
    stfs    f30,64(r30)
    lfs     f0,18396(r12)
    stw     r31,88(r30)
    stfs    f13,24(r10)
    lis     r9,4096
    stfs    f0,28(r10)
    lwz     r3,48(r30)
    lfs     f1,18400(r9)
    bl      ext_02046b50
    lwz     r3,48(r30)
    bl      ext_02046b44
L0203a410:
    lwz     r29,12(r1)
    lfs     f31,48(r1)
    lfs     f30,32(r1)
    lfd     f31,40(r1)
    lfd     f30,24(r1)
    lwz     r31,20(r1)
    mr      r3,r30
    lwz     r30,16(r1)
    isync
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
