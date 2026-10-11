# Converted from the disassembly of 0x021825cc (412 bytes). Name is a placeholder.
    .text
    .globl TrailManager_Next_021825cc
TrailManager_Next_021825cc:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stw     r31,20(r1)
    stfs    f31,32(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r0,44(r1)
    stw     r28,8(r1)
    mr      r29,r3
    lwz     r0,52(r29)
    li      r28,0
    cmpw    r28,r0
    mr      r30,r4
    bge-    L021826d8
    lis     r11,4098
    lfs     f31,-7628(r11)
    li      r31,0
L02182618:
    lwz     r12,56(r29)
    lwzx    r8,r12,r31
    lwz     r10,484(r8)
    lwz     r4,0(r10)
    stfs    f31,28(r4)
    lwz     r11,484(r8)
    lwz     r4,0(r11)
    addi    r3,r29,164
    bl      ext_0261eebc
    lwz     r5,56(r29)
    lwzx    r8,r5,r31
    lwz     r6,480(r8)
    cmplwi  r6,2
    lwz     r10,484(r8)
    ble-    L02182658
    addi    r10,r10,8
L02182658:
    lwz     r7,0(r10)
    stfs    f31,28(r7)
    lwz     r0,480(r8)
    cmplwi  r0,2
    lwz     r12,484(r8)
    ble-    L02182674
    addi    r12,r12,8
L02182674:
    lwz     r4,0(r12)
    addi    r3,r29,380
    bl      ext_0261eebc
    lwz     r9,56(r29)
    lwzx    r7,r9,r31
    lwz     r10,480(r7)
    cmplwi  r10,3
    lwz     r9,484(r7)
    ble-    L0218269c
    addi    r9,r9,12
L0218269c:
    lwz     r12,0(r9)
    stfs    f31,28(r12)
    lwz     r0,480(r7)
    cmplwi  r0,3
    lwz     r11,484(r7)
    ble-    L021826b8
    addi    r11,r11,12
L021826b8:
    lwz     r4,0(r11)
    addi    r3,r29,488
    bl      ext_0261eebc
    lwz     r0,52(r29)
    addi    r28,r28,1
    cmpw    r28,r0
    addi    r31,r31,4
    blt+    L02182618
L021826d8:
    lis     r3,4117
    lwz     r3,-28988(r3)
    cmpwi   r3,0
    beq-    L021826f0
    bl      ext_0205c37c
    lwz     r0,52(r29)
L021826f0:
    li      r31,0
    cmpw    r31,r0
    bge-    L0218273c
    li      r28,0
L02182700:
    lwz     r4,56(r29)
    lwzx    r8,r4,r28
    lwz     r3,20(r8)
    cmpwi   r3,0
    beq-    L0218272c
    lwz     r5,0(r3)
    lwz     r0,44(r5)
    mtctr   r0
    mr      r4,r30
    bctrl
    lwz     r0,52(r29)
L0218272c:
    addi    r31,r31,1
    cmpw    r31,r0
    addi    r28,r28,4
    blt+    L02182700
L0218273c:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lfs     f31,32(r1)
    lwz     r30,16(r1)
    lfd     f31,24(r1)
    lwz     r31,20(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
