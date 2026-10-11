# Converted from the disassembly of 0x024bf7b8 (404 bytes). Name is a placeholder.
    .text
    .globl Batch_024bf7b8
Batch_024bf7b8:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,32(r1)
    stw     r0,44(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r3
    lwz     r12,28(r31)
    cmplwi  r12,2
    lwz     r12,32(r31)
    ble-    L024bf7f0
    addi    r12,r12,8
L024bf7f0:
    lwz     r30,0(r12)
    li      r4,0
    mr      r3,r30
    bl      ext_0247fc68
    li      r4,0
    mr      r3,r30
    bl      ext_0247f968
    lwz     r11,28(r31)
    cmplwi  r11,3
    lwz     r11,32(r31)
    ble-    L024bf820
    addi    r11,r11,12
L024bf820:
    lis     r12,4107
    lfs     f31,-30612(r12)
    fmr     f1,f31
    lwz     r3,0(r11)
    li      r4,1
    bl      ext_0247f968
    lwz     r0,28(r31)
    cmplwi  r0,4
    lwz     r12,32(r31)
    ble-    L024bf84c
    addi    r12,r12,16
L024bf84c:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,1
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    lwz     r0,28(r31)
    cmplwi  r0,3
    lwz     r12,32(r31)
    ble-    L024bf878
    addi    r12,r12,12
L024bf878:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    lwz     r0,28(r31)
    cmplwi  r0,4
    lwz     r11,32(r31)
    ble-    L024bf89c
    addi    r11,r11,16
L024bf89c:
    fmr     f1,f31
    lwz     r3,0(r11)
    li      r4,0
    bl      ext_0247f968
    lwz     r0,28(r31)
    cmplwi  r0,5
    lwz     r12,32(r31)
    ble-    L024bf8c0
    addi    r12,r12,20
L024bf8c0:
    lis     r11,4107
    lwz     r3,0(r12)
    lfs     f1,-30608(r11)
    li      r4,0
    bl      ext_0247f854
    lwz     r12,288(r31)
    cmpwi   r12,-1
    beq-    L024bf928
    lwz     r0,28(r31)
    cmplwi  r0,6
    lwz     r11,32(r31)
    ble-    L024bf8f4
    addi    r11,r11,24
L024bf8f4:
    lis     r10,4107
    lis     r0,17200
    addi    r12,r12,1
    lfd     f0,-30392(r10)
    xoris   r12,r12,32768
    stw     r0,8(r1)
    stw     r12,12(r1)
    lfd     f13,8(r1)
    fsub    f0,f13,f0
    frsp    f1,f0
    lwz     r3,0(r11)
    li      r4,0
    bl      ext_0247f968
L024bf928:
    lfs     f31,32(r1)
    lwz     r31,20(r1)
    lfd     f31,24(r1)
    lwz     r30,16(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
