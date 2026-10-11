# Converted from the disassembly of 0x024c46b0 (396 bytes). Name is a placeholder.
    .text
    .globl Batch_024c46b0
Batch_024c46b0:
    mflr    r0
    stwu    r1,-48(r1)
    stfd    f31,32(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,40(r1)
    stw     r0,52(r1)
    stw     r30,24(r1)
    lis     r11,4117
    stw     r31,28(r1)
    lwz     r11,3660(r11)
    mr      r30,r3
    cmplwi  r4,4
    lwz     r10,20(r11)
    bge-    L024c46f0
    slwi    r12,r4,2
    add     r10,r10,r12
L024c46f0:
    lis     r12,4119
    lwzu    r9,4716(r12)
    lis     r4,4119
    lwz     r31,0(r10)
    cmpwi   r9,0
    addi    r4,r4,27740
    bne-    L024c4720
    lis     r0,4107
    li      r10,1
    addic   r0,r0,-25888
    stw     r10,0(r12)
    stw     r0,0(r4)
L024c4720:
    cmpwi   r31,0
    beq-    L024c4744
    lwz     r8,92(r31)
    lwz     r10,12(r8)
    mtctr   r10
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024c4748
L024c4744:
    li      r31,0
L024c4748:
    lwz     r4,100(r30)
    li      r5,1
    mr      r3,r30
    bl      ext_02480664
    mr      r3,r31
    addi    r4,r1,8
    bl      ext_024aaaa0
    addi    r5,r1,8
    li      r4,1
    mr      r3,r30
    bl      ext_024c42b8
    mr      r3,r31
    bl      ext_024aa978
    lis     r9,4107
    cmpwi   r3,-1
    lfs     f31,-25828(r9)
    beq-    L024c47f4
    lwz     r8,28(r30)
    cmplwi  r8,4
    lwz     r12,32(r30)
    ble-    L024c47a0
    addi    r12,r12,16
L024c47a0:
    lis     r11,4107
    lis     r10,17200
    lfd     f0,-25560(r11)
    xoris   r0,r3,32768
    stw     r10,16(r1)
    stw     r0,20(r1)
    lfd     f13,16(r1)
    fsub    f13,f13,f0
    frsp    f1,f13
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    lwz     r11,28(r30)
    cmplwi  r11,1
    lwz     r8,32(r30)
    ble-    L024c47e4
    addi    r8,r8,4
L024c47e4:
    fmr     f1,f31
    lwz     r3,0(r8)
    li      r4,0
    bl      ext_0247f854
L024c47f4:
    lwz     r0,28(r30)
    cmplwi  r0,2
    lwz     r9,32(r30)
    ble-    L024c4808
    addi    r9,r9,8
L024c4808:
    fmr     f1,f31
    lwz     r3,0(r9)
    li      r4,0
    bl      ext_0247f854
    lfs     f31,40(r1)
    lwz     r31,28(r1)
    lfd     f31,32(r1)
    lwz     r30,24(r1)
    isync
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
