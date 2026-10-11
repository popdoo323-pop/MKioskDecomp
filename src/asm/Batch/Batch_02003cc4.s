# Converted from the disassembly of 0x02003cc4 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_02003cc4
Batch_02003cc4:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    stw     r31,12(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r30,8(r1)
    stw     r0,36(r1)
    bl      ext_020035c8
    cmpwi   r3,0
    beq-    L02003d54
    mr      r3,r31
    bl      ext_02003668
    lwz     r12,68(r31)
    lwz     r3,84(r12)
    bl      ext_02186008
    lwz     r12,68(r31)
    lis     r30,4120
    lfs     f31,144(r31)
    cmpwi   r3,0
    lwz     r3,84(r12)
    beq-    L02003d28
    lfs     f13,-15740(r30)
    fmuls   f31,f31,f13
L02003d28:
    bl      ext_02186008
    cmpwi   r3,0
    lis     r11,4096
    lwz     r3,76(r31)
    lfs     f1,232(r11)
    beq-    L02003d48
    lfs     f0,-15740(r30)
    fmuls   f1,f1,f0
L02003d48:
    bl      ext_02009660
    fadds   f12,f31,f1
    stfs    f12,216(r31)
L02003d54:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
