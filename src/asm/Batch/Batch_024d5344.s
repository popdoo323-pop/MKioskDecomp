# Converted from the disassembly of 0x024d5344 (348 bytes). Name is a placeholder.
    .text
    .globl Batch_024d5344
Batch_024d5344:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r3
    stw     r31,12(r1)
    stw     r0,20(r1)
    bl      ext_024cb9a0
    lwz     r11,616(r30)
    cmpwi   r11,0
    bne-    L024d5404
    lwz     r0,104(r30)
    cmpwi   r0,0
    bne-    L024d5404
    lis     r10,4117
    lwz     r10,3660(r10)
    lwz     r9,12(r10)
    lwz     r6,0(r9)
    cmplwi  r6,3
    lwz     r12,4(r9)
    ble-    L024d5398
    addi    r12,r12,12
L024d5398:
    lis     r10,4119
    lwzu    r7,4616(r10)
    lis     r4,4119
    lwz     r31,0(r12)
    cmpwi   r7,0
    addi    r4,r4,4620
    bne-    L024d53c8
    lis     r9,4107
    li      r0,1
    addi    r9,r9,-17572
    stw     r0,0(r10)
    stw     r9,0(r4)
L024d53c8:
    cmpwi   r31,0
    beq-    L024d53ec
    lwz     r10,36(r31)
    lwz     r0,12(r10)
    mtctr   r0
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024d53f0
L024d53ec:
    li      r31,0
L024d53f0:
    lbz     r6,968(r31)
    cmpwi   r6,0
    beq-    L024d5404
    mr      r3,r30
    bl      ext_024d4bf4
L024d5404:
    lwz     r8,28(r30)
    cmplwi  r8,1
    lwz     r9,32(r30)
    ble-    L024d5428
    lwz     r12,4(r9)
    lwz     r7,4(r12)
    cmpwi   r7,0
    bne-    L024d5488
    b       L024d5438
L024d5428:
    lwz     r12,0(r9)
    lwz     r7,4(r12)
    cmpwi   r7,0
    bne-    L024d5488
L024d5438:
    cmplwi  r8,1
    ble-    L024d5444
    addi    r9,r9,4
L024d5444:
    lwz     r3,0(r9)
    lwz     r4,4(r3)
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024d5488
    mr      r3,r30
    bl      ext_024800e0
    lwz     r0,28(r30)
    cmplwi  r0,1
    lwz     r11,32(r30)
    ble-    L024d5474
    addi    r11,r11,4
L024d5474:
    lis     r12,4107
    lwz     r3,0(r11)
    lfs     f1,-17464(r12)
    li      r4,1
    bl      ext_0247f854
L024d5488:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
