# Converted from the disassembly of 0x02029e40 (224 bytes). Name is a placeholder.
    .text
    .globl Batch_02029e40
Batch_02029e40:
    stwu    r1,-72(r1)
    stfd    f31,56(r1)
    mflr    r0
    stfd    f29,24(r1)
    ps_merge10 f31,f31,f31
    stw     r30,16(r1)
    ps_merge10 f29,f29,f29
    stw     r31,20(r1)
    lis     r11,4096
    stfs    f31,64(r1)
    stfs    f29,32(r1)
    stfd    f30,40(r1)
    stw     r0,76(r1)
    ps_merge10 f30,f30,f30
    lfs     f31,11804(r11)
    stfs    f30,48(r1)
    mr      r31,r3
    stw     r29,12(r1)
    lwz     r3,88(r31)
    fmr     f1,f31
    lfs     f30,36(r3)
    bl      ext_0202816c
    lwz     r0,280(r31)
    li      r30,1
    cmpw    r30,r0
    bge-    L02029ee8
    addi    r29,r31,84
L02029eac:
    lwz     r3,12(r29)
    lfs     f13,36(r3)
    fsubs   f29,f30,f13
    fsel    f0,f29,f29,f31
    fmr     f1,f0
    fmr     f29,f0
    addi    r29,r29,8
    bl      ext_0202816c
    cmpwi   r30,1
    lwz     r0,280(r31)
    bne-    L02029edc
    stfs    f29,296(r31)
L02029edc:
    addi    r30,r30,1
    cmpw    r30,r0
    blt+    L02029eac
L02029ee8:
    lwz     r29,12(r1)
    lfs     f31,64(r1)
    lfs     f29,32(r1)
    lfd     f31,56(r1)
    lfs     f30,48(r1)
    lfd     f29,24(r1)
    lfd     f30,40(r1)
    lwz     r31,20(r1)
    lwz     r30,16(r1)
    isync
    lwz     r0,76(r1)
    mtlr    r0
    addi    r1,r1,72
    blr
