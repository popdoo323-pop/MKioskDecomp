# Converted from the disassembly of 0x024c8458 (316 bytes). Name is a placeholder.
    .text
    .globl Batch_024c8458
Batch_024c8458:
    mflr    r0
    stwu    r1,-48(r1)
    stfd    f31,32(r1)
    ps_merge10 f31,f31,f31
    stfd    f30,16(r1)
    ps_merge10 f30,f30,f30
    stfs    f31,40(r1)
    stfs    f30,24(r1)
    stw     r31,12(r1)
    stw     r0,52(r1)
    mr      r31,r3
    stw     r30,8(r1)
    lwz     r9,180(r31)
    lis     r12,4107
    lwz     r9,32(r9)
    cmpwi   r4,0
    lfs     f31,-22840(r12)
    li      r4,0
    lwz     r3,0(r9)
    beq-    L024c852c
    mr      r30,r3
    bl      ext_0247fc68
    li      r4,0
    mr      r3,r30
    bl      ext_0247f968
    lwz     r10,180(r31)
    lwz     r0,28(r10)
    cmplwi  r0,1
    lwz     r12,32(r10)
    ble-    L024c84d4
    addi    r12,r12,4
L024c84d4:
    lis     r11,4107
    lfs     f30,-22832(r11)
    fmr     f1,f30
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    lwz     r10,180(r31)
    lwz     r12,28(r10)
    cmplwi  r12,2
    lwz     r10,32(r10)
    ble-    L024c8504
    addi    r10,r10,8
L024c8504:
    fmr     f1,f30
    lwz     r3,0(r10)
    li      r4,0
    bl      ext_0247f968
    lwz     r9,180(r31)
    lwz     r0,28(r9)
    cmplwi  r0,3
    lwz     r11,32(r9)
    bgt-    L024c8554
L024c8528:
    b       L024c8558
L024c852c:
    fmr     f1,f31
    bl      ext_0247f90c
    lis     r3,4107
    addi    r3,r3,-22828
    bl      ext_02045d30
    lwz     r9,180(r31)
    lwz     r0,28(r9)
    cmplwi  r0,3
    lwz     r11,32(r9)
    ble+    L024c8528
L024c8554:
    addi    r11,r11,12
L024c8558:
    fmr     f1,f31
    lwz     r3,0(r11)
    li      r4,0
    bl      ext_0247f854
    lwz     r31,12(r1)
    lfs     f31,40(r1)
    lfs     f30,24(r1)
    lfd     f31,32(r1)
    lfd     f30,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
