# Converted from the disassembly of 0x024e54ac (408 bytes). Name is a placeholder.
    .text
    .globl Batch_024e54ac
Batch_024e54ac:
    mflr    r0
    stwu    r1,-64(r1)
    stfd    f30,32(r1)
    ps_merge10 f30,f30,f30
    stfd    f31,48(r1)
    stfs    f30,40(r1)
    ps_merge10 f31,f31,f31
    stw     r31,28(r1)
    stfs    f31,56(r1)
    mr      r31,r3
    stw     r0,68(r1)
    lwz     r6,204(r31)
    lbz     r7,664(r6)
    cmpwi   r7,0
    beq-    L024e5504
    bl      ext_024ae948
    bl      ext_024fb49c
    cmpwi   r3,0
    beq-    L024e5504
    lwz     r3,200(r31)
    addi    r4,r3,636
    bl      ext_024cd4b0
L024e5504:
    lwz     r8,200(r31)
    lfs     f11,204(r8)
    lfs     f13,188(r8)
    lis     r10,4107
    fsubs   f11,f11,f13
    lfs     f31,-9172(r10)
    lis     r9,4107
    fcmpu   cr0,f31,f11
    lfs     f30,-9176(r9)
    bgt-    L024e55b8
    fcmpu   cr0,f11,f30
    bgt-    L024e55b8
    lfs     f13,208(r8)
    lfs     f12,192(r8)
    fsubs   f0,f13,f12
    fcmpu   cr0,f31,f0
    bgt-    L024e55b8
    fcmpu   cr0,f0,f30
    bgt-    L024e55b8
    li      r11,2
    lwz     r3,208(r31)
    addi    r4,r1,8
    stw     r11,8(r1)
    bl      ext_024bfb84
    lwz     r8,200(r31)
    lfs     f12,204(r8)
    lfs     f0,196(r8)
    fsubs   f12,f12,f0
    fcmpu   cr0,f31,f12
    ble-    L024e55e4
L024e557c:
    li      r0,3
    lwz     r3,208(r31)
    addi    r4,r1,20
    stw     r0,20(r1)
    bl      ext_024bfac0
    lfs     f30,40(r1)
    lfs     f31,56(r1)
    lfd     f30,32(r1)
    lfd     f31,48(r1)
    lwz     r31,28(r1)
    isync
    lwz     r0,68(r1)
    mtlr    r0
    addi    r1,r1,64
    blr
L024e55b8:
    li      r12,2
    lwz     r3,208(r31)
    addi    r4,r1,12
    stw     r12,12(r1)
    bl      ext_024bfac0
    lwz     r8,200(r31)
    lfs     f12,204(r8)
    lfs     f0,196(r8)
    fsubs   f12,f12,f0
    fcmpu   cr0,f31,f12
    bgt+    L024e557c
L024e55e4:
    fcmpu   cr0,f12,f30
    bgt+    L024e557c
    lfs     f0,208(r8)
    lfs     f11,200(r8)
    fsubs   f13,f0,f11
    fcmpu   cr0,f31,f13
    bgt+    L024e557c
    fcmpu   cr0,f13,f30
    bgt+    L024e557c
    li      r0,3
    lwz     r3,208(r31)
    addi    r4,r1,16
    stw     r0,16(r1)
    bl      ext_024bfb84
    lfs     f30,40(r1)
    lfs     f31,56(r1)
    lfd     f30,32(r1)
    lfd     f31,48(r1)
    lwz     r31,28(r1)
    isync
    lwz     r0,68(r1)
    mtlr    r0
    addi    r1,r1,64
    blr
