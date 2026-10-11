# Converted from the disassembly of 0x024c51a8 (348 bytes). Name is a placeholder.
    .text
    .globl Batch_024c51a8
Batch_024c51a8:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    stw     r31,12(r1)
    stw     r0,36(r1)
    lwz     r0,0(r4)
    mr      r31,r3
    lis     r11,4107
    cmplwi  r0,3
    lfs     f31,-24276(r11)
    ble-    L024c5258
    cmplwi  r0,7
    ble-    L024c520c
    cmplwi  r0,9
    beq-    L024c52a0
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c520c:
    lwz     r4,88(r31)
    li      r5,0
    mr      r3,r31
    bl      ext_02480664
    lwz     r4,92(r31)
    li      r5,0
    mr      r3,r31
    bl      ext_02480664
    lwz     r12,28(r31)
    cmplwi  r12,1
    lwz     r11,32(r31)
    ble-    L024c5240
    addi    r11,r11,4
L024c5240:
    lis     r10,4107
    lwz     r3,0(r11)
    lfs     f1,-24268(r10)
    li      r4,0
    bl      ext_0247f968
    b       L024c52e4
L024c5258:
    lwz     r4,88(r31)
    li      r5,0
    mr      r3,r31
    bl      ext_02480664
    lwz     r4,92(r31)
    li      r5,0
    mr      r3,r31
    bl      ext_02480664
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024c528c
    addi    r12,r12,4
L024c528c:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    b       L024c52e4
L024c52a0:
    lwz     r4,88(r31)
    li      r5,1
    mr      r3,r31
    bl      ext_02480664
    lwz     r4,92(r31)
    li      r5,1
    mr      r3,r31
    bl      ext_02480664
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r10,32(r31)
    ble-    L024c52d4
    addi    r10,r10,4
L024c52d4:
    fmr     f1,f31
    lwz     r3,0(r10)
    li      r4,0
    bl      ext_0247f968
L024c52e4:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
