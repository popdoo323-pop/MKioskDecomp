# Converted from the disassembly of 0x021fa598 (480 bytes). Name is a placeholder.
    .text
    .globl Bird_Method_021fa598
Bird_Method_021fa598:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r9,0(r4)
    mr      r31,r3
    cmplwi  r9,1
    mr      r4,r6
    blt-    L021fa5dc
    beq-    L021fa5f8
    cmplwi  r9,3
    beq-    L021fa63c
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L021fa5dc:
    mr      r3,r4
    bl      ext_0215a290
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L021fa5f8:
    cmpwi   r4,0
    beq-    L021fa66c
    lwz     r10,184(r31)
    lwz     r11,396(r10)
    mtctr   r11
    mr      r3,r31
    bctrl
    lwz     r12,184(r31)
    lwz     r0,428(r12)
    mtctr   r0
    mr      r3,r31
    bctrl
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L021fa63c:
    cmpwi   r4,0
    beq-    L021fa66c
    lwz     r8,184(r31)
    lwz     r9,404(r8)
    mtctr   r9
    mr      r3,r31
    bctrl
    lwz     r10,184(r31)
    lwz     r0,436(r10)
    mtctr   r0
    mr      r3,r31
    bctrl
L021fa66c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_021d13b0
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    addi    r3,r3,36
    blr
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    stw     r31,12(r1)
    lis     r11,4124
    stw     r0,36(r1)
    lfs     f12,0(r3)
    lfsu    f13,26780(r11)
    fcmpu   cr0,f12,f13
    li      r31,1
    bne-    L021fa6f8
    lfs     f0,4(r3)
    lfs     f12,4(r11)
    fcmpu   cr0,f0,f12
    bne-    L021fa6f8
    lfs     f13,8(r3)
    lfs     f0,8(r11)
    fcmpu   cr0,f13,f0
    beq-    L021fa70c
L021fa6f8:
    lfs     f31,12(r3)
    bl      ext_0209592c
    fcmpu   cr0,f31,f1
    ble-    L021fa754
    b       L021fa750
L021fa70c:
    lis     r12,4099
    lfs     f31,12(r3)
    lfs     f0,-10268(r12)
    fcmpu   cr0,f31,f0
    bne-    L021fa744
    lfs     f12,16(r3)
    fcmpu   cr0,f12,f0
    bne-    L021fa744
    lfs     f13,20(r3)
    fcmpu   cr0,f13,f0
    bne-    L021fa744
    lfs     f13,24(r3)
    fcmpu   cr0,f13,f0
    beq-    L021fa750
L021fa744:
    bl      ext_0209592c
    fcmpu   cr0,f31,f1
    ble-    L021fa754
L021fa750:
    li      r31,0
L021fa754:
    lfs     f31,24(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
