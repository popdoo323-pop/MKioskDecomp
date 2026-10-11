# Converted from the disassembly of 0x024c7fcc (284 bytes). Name is a placeholder.
    .text
    .globl Batch_024c7fcc
Batch_024c7fcc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    lwz     r9,0(r31)
    lwz     r10,180(r30)
    cmpwi   r9,2
    lwz     r0,28(r10)
    bne-    L024c8020
    cmplwi  r0,1
    lwz     r11,32(r10)
    ble-    L024c8010
    addi    r11,r11,4
L024c8010:
    cmpwi   r9,2
    lwz     r3,0(r11)
    bne-    L024c8058
    b       L024c803c
L024c8020:
    cmplwi  r0,2
    lwz     r12,32(r10)
    ble-    L024c8030
    addi    r12,r12,8
L024c8030:
    cmpwi   r9,2
    lwz     r3,0(r12)
    bne-    L024c8058
L024c803c:
    addi    r29,r30,428
    lwz     r0,4(r3)
    lis     r12,4107
    cmpwi   r0,0
    lfs     f1,-22840(r12)
    bne-    L024c809c
    b       L024c8070
L024c8058:
    addi    r29,r30,429
    lwz     r0,4(r3)
    lis     r12,4107
    cmpwi   r0,0
    lfs     f1,-22840(r12)
    bne-    L024c809c
L024c8070:
    li      r4,0
    bl      ext_0247f90c
    li      r11,1
    stb     r11,0(r29)
    lwz     r12,0(r31)
    cmpwi   r12,2
    beq-    L024c80c0
L024c808c:
    li      r4,0
    addi    r3,r30,364
    bl      ext_0248b150
    b       L024c80cc
L024c809c:
    cmpwi   r0,1
    bne-    L024c80ac
    li      r4,0
    bl      ext_0247f854
L024c80ac:
    li      r11,1
    stb     r11,0(r29)
    lwz     r12,0(r31)
    cmpwi   r12,2
    bne+    L024c808c
L024c80c0:
    li      r4,0
    addi    r3,r30,300
    bl      ext_0248b150
L024c80cc:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
