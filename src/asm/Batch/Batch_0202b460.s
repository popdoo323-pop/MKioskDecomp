# Converted from the disassembly of 0x0202b460 (260 bytes). Name is a placeholder.
    .text
    .globl Batch_0202b460
Batch_0202b460:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r28,8(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    mr      r31,r6
    lwz     r6,12(r29)
    lwz     r11,56(r6)
    rlwinm  r12,r11,10,31,31
    xori    r0,r12,1
    cmpwi   r0,0
    mr      r30,r5
    beq-    L0202b544
    lfs     f0,0(r4)
    stfs    f0,324(r29)
    lfs     f0,4(r4)
    stfs    f0,328(r29)
    lfs     f0,8(r4)
    lwz     r3,12(r29)
    lis     r28,4120
    stfs    f0,332(r29)
    lfsu    f1,-12920(r28)
    addi    r4,r29,324
    bl      ext_0207ee0c
    lwz     r0,16(r29)
    cmpwi   r0,0
    li      r3,0
    beq-    L0202b4e4
    lwz     r8,24(r29)
    lwz     r3,0(r8)
L0202b4e4:
    lfs     f1,0(r28)
    mr      r4,r30
    bl      ext_0207ee0c
    lwz     r9,16(r29)
    cmplwi  r9,1
    li      r3,0
    ble-    L0202b508
    lwz     r10,24(r29)
    lwz     r3,4(r10)
L0202b508:
    lfs     f1,0(r28)
    mr      r4,r31
    bl      ext_0207ee0c
    lfs     f0,0(r30)
    stfs    f0,336(r29)
    lfs     f0,4(r30)
    stfs    f0,340(r29)
    lfs     f0,8(r30)
    stfs    f0,344(r29)
    lfs     f0,0(r31)
    stfs    f0,348(r29)
    lfs     f0,4(r31)
    stfs    f0,352(r29)
    lfs     f0,8(r31)
    stfs    f0,356(r29)
L0202b544:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
