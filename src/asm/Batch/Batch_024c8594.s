# Converted from the disassembly of 0x024c8594 (300 bytes). Name is a placeholder.
    .text
    .globl Batch_024c8594
Batch_024c8594:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    stw     r31,12(r1)
    lis     r12,4107
    lfs     f31,-22832(r12)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r12,180(r31)
    cmpwi   r4,0
    lwz     r10,32(r12)
    li      r4,0
    lwz     r3,0(r10)
    beq-    L024c8644
    fmr     f1,f31
    bl      ext_0247f968
    lwz     r12,180(r31)
    lwz     r10,28(r12)
    cmplwi  r10,1
    lwz     r10,32(r12)
    ble-    L024c85f4
    addi    r10,r10,4
L024c85f4:
    fmr     f1,f31
    lwz     r3,0(r10)
    li      r4,0
    bl      ext_0247f968
    lwz     r12,180(r31)
    lwz     r0,28(r12)
    cmplwi  r0,2
    lwz     r11,32(r12)
    ble-    L024c861c
    addi    r11,r11,8
L024c861c:
    fmr     f1,f31
    lwz     r3,0(r11)
    li      r4,0
    bl      ext_0247f968
    lwz     r12,180(r31)
    lwz     r10,28(r12)
    cmplwi  r10,3
    lwz     r12,32(r12)
    bgt-    L024c8664
L024c8640:
    b       L024c8668
L024c8644:
    lis     r11,4107
    lfs     f1,-22836(r11)
    bl      ext_0247f90c
    lwz     r12,180(r31)
    lwz     r10,28(r12)
    cmplwi  r10,3
    lwz     r12,32(r12)
    ble+    L024c8640
L024c8664:
    addi    r12,r12,12
L024c8668:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    li      r0,2
    mr      r3,r31
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_024c8288
    li      r0,3
    mr      r3,r31
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_024c8288
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
