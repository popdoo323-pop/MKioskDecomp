# Converted from the disassembly of 0x024d8464 (508 bytes). Name is a placeholder.
    .text
    .globl Batch_024d8464
Batch_024d8464:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r28,8(r1)
    stw     r29,12(r1)
    mr      r28,r5
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    mr      r3,r28
    mr      r30,r4
    bl      ext_024af0dc
    lwz     r0,28(r29)
    cmpwi   r3,0
    lwz     r12,32(r29)
    beq-    L024d8584
    cmplwi  r0,1
    ble-    L024d84b0
    addi    r12,r12,4
L024d84b0:
    lis     r9,4107
    lwz     r3,0(r12)
    lfs     f1,-15472(r9)
    li      r4,0
    bl      ext_0247f968
    lis     r11,4117
    lwz     r11,3660(r11)
    lwz     r12,12(r11)
    lwz     r0,0(r12)
    cmplwi  r0,3
    lwz     r10,4(r12)
    ble-    L024d84e4
    addi    r10,r10,12
L024d84e4:
    lis     r7,4119
    lwzu    r12,4616(r7)
    lis     r4,4119
    lwz     r31,0(r10)
    cmpwi   r12,0
    addi    r4,r4,4620
    bne-    L024d8514
    lis     r6,4107
    li      r0,1
    addi    r6,r6,-15560
    stw     r0,0(r7)
    stw     r6,0(r4)
L024d8514:
    cmpwi   r31,0
    beq-    L024d8538
    lwz     r8,36(r31)
    lwz     r9,12(r8)
    mtctr   r9
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024d853c
L024d8538:
    li      r31,0
L024d853c:
    addi    r3,r31,588
    mr      r4,r28
    bl      ext_024a590c
    lwz     r4,92(r29)
    mr      r5,r3
    li      r6,0
    mr      r3,r29
    bl      ext_024806dc
    mr      r3,r29
    mr      r4,r30
    bl      ext_02480e08
    mr      r12,r30
    lhz     r8,0(r12)
    lwz     r3,100(r29)
    cmpwi   r8,0
    li      r5,0
    beq-    L024d85f0
    b       L024d85e0
L024d8584:
    cmplwi  r0,1
    ble-    L024d8590
    addi    r12,r12,4
L024d8590:
    lis     r6,4107
    lwz     r3,0(r12)
    lfs     f1,-15468(r6)
    li      r4,0
    bl      ext_0247f968
    bl      ext_024af7d0
    lwz     r4,92(r29)
    mr      r5,r3
    mr      r3,r29
    li      r6,0
    bl      ext_024806dc
    mr      r4,r30
    mr      r3,r29
    bl      ext_02480e08
    mr      r12,r30
    lhz     r8,0(r12)
    lwz     r3,100(r29)
    cmpwi   r8,0
    li      r5,0
    beq-    L024d85f0
L024d85e0:
    lhzu    r10,2(r12)
    cmpwi   r10,0
    addi    r5,r5,1
    bne+    L024d85e0
L024d85f0:
    mr      r4,r30
    bl      ext_0255aab0
    lfs     f0,104(r29)
    lwz     r10,88(r29)
    fadds   f0,f1,f0
    lbz     r0,68(r10)
    mr      r3,r29
    stfs    f0,60(r10)
    ori     r6,r0,16
    li      r4,1
    stb     r6,68(r10)
    bl      ext_02480634
    lwz     r8,32(r29)
    li      r4,0
    li      r6,1
    lwz     r3,0(r8)
    mr      r5,r4
    bl      ext_0247faa4
    li      r7,180
    stw     r7,108(r29)
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
