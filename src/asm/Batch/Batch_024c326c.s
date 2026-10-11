# Converted from the disassembly of 0x024c326c (392 bytes). Name is a placeholder.
    .text
    .globl Batch_024c326c
Batch_024c326c:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    stw     r30,8(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    mr      r30,r3
    stw     r31,12(r1)
    stw     r0,36(r1)
    lwz     r0,28(r30)
    cmplwi  r0,1
    lwz     r12,32(r30)
    ble-    L024c32a4
    addi    r12,r12,4
L024c32a4:
    lbz     r9,96(r30)
    lis     r11,4107
    lwz     r31,0(r12)
    lfs     f31,-25828(r11)
    cmpwi   r9,0
    lwz     r0,4(r31)
    beq-    L024c3368
    cmpwi   r0,0
    bne-    L024c3328
    mr      r3,r31
    li      r4,0
    bl      ext_0247fdd8
    cmpwi   r3,0
    bne-    L024c32ec
    lwz     r0,4(r31)
    cmpwi   r0,2
    bne-    L024c33d0
    b       L024c3330
L024c32ec:
    mr      r3,r30
    bl      ext_024800e0
    fmr     f1,f31
    mr      r3,r31
    li      r4,1
    bl      ext_0247f854
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c3328:
    cmpwi   r0,2
    bne-    L024c33d0
L024c3330:
    li      r4,0
    mr      r3,r31
    li      r6,2
    mr      r5,r4
    bl      ext_0247faa4
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c3368:
    cmpwi   r0,0
    bne-    L024c33a8
    li      r4,2
    li      r5,0
    mr      r3,r31
    mr      r6,r4
    bl      ext_0247faa4
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c33a8:
    cmpwi   r0,1
    bne-    L024c33d0
    mr      r3,r31
    bl      ext_0247fba0
    mr      r3,r30
    bl      ext_024800e0
    fmr     f1,f31
    mr      r3,r31
    li      r4,2
    bl      ext_0247f854
L024c33d0:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
