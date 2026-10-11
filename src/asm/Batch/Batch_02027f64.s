# Converted from the disassembly of 0x02027f64 (316 bytes). Name is a placeholder.
    .text
    .globl Batch_02027f64
Batch_02027f64:
    stwu    r1,-40(r1)
    mflr    r0
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stw     r31,20(r1)
    mr.     r31,r3
    stw     r28,8(r1)
    stfs    f31,32(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    mr      r30,r4
    stw     r0,44(r1)
    bne-    L02027fa8
    li      r3,788
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02028070
L02027fa8:
    lis     r11,4096
    stw     r30,4(r31)
    li      r28,0
    lfs     f31,11096(r11)
    lis     r12,4096
    stw     r28,16(r31)
    addic.  r29,r31,48
    addi    r12,r12,11072
    stw     r28,28(r31)
    stw     r12,0(r31)
    stw     r28,8(r31)
    stfs    f31,44(r31)
    stw     r28,12(r31)
    stw     r28,20(r31)
    stw     r28,24(r31)
    stw     r28,32(r31)
    stfs    f31,36(r31)
    stfs    f31,40(r31)
    bne-    L02028004
    li      r3,736
    bl      ext_0260128c
    mr.     r29,r3
    beq-    L02028048
L02028004:
    mr.     r3,r29
    bne-    L0202801c
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0202802c
L0202801c:
    stw     r28,4(r3)
    stw     r28,8(r3)
    stw     r28,0(r3)
    stw     r28,12(r3)
L0202802c:
    addic.  r0,r29,16
    beq-    L02028048
    stw     r0,0(r29)
    li      r0,180
    stw     r28,8(r29)
    stw     r0,4(r29)
    stw     r28,12(r29)
L02028048:
    stfs    f31,784(r31)
    lwz     r8,0(r30)
    stw     r8,8(r31)
    lwz     r3,84(r8)
    bl      ext_02185c38
    lwz     r9,8(r31)
    stw     r3,24(r31)
    lwz     r3,84(r9)
    bl      ext_02185c38
    stw     r3,28(r31)
L02028070:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lfs     f31,32(r1)
    lwz     r30,16(r1)
    lfd     f31,24(r1)
    mr      r3,r31
    lwz     r31,20(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
