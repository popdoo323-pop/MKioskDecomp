# Converted from the disassembly of 0x024a0cb8 (2524 bytes). Name is a placeholder.
    .text
    .globl Driver_Register2_024a0cb8
Driver_Register2_024a0cb8:
    mflr    r0
    mr      r25,r7
    mr      r28,r8
    mr      r24,r3
    mr      r27,r4
    stw     r0,116(r1)
    bl      ext_024a03f0
    lis     r26,4106
    addi    r26,r26,26140
    lis     r5,4106
    stw     r26,12(r1)
    addi    r5,r5,27432
    lwz     r6,4(r27)
    stw     r5,8(r1)
    lwz     r7,20(r6)
    mtctr   r7
    lwz     r23,0(r27)
    mr      r3,r27
    bctrl
    lwz     r9,0(r27)
    lbz     r8,0(r9)
    li      r29,0
    lis     r10,8
    cmpwi   r8,0
    mr      r31,r29
    beq-    L024a0d44
L024a0d20:
    addi    r31,r31,1
    cmpw    r31,r10
    addi    r9,r9,1
    bgt-    L024a0d40
    lbz     r11,0(r9)
    cmpwi   r11,0
    bne+    L024a0d20
    b       L024a0d44
L024a0d40:
    li      r31,0
L024a0d44:
    lwz     r12,12(r1)
    mr.     r22,r31
    lwz     r0,20(r12)
    bge-    L024a0d58
    li      r22,0
L024a0d58:
    mtctr   r0
    addi    r3,r1,8
    bctrl
    lwz     r7,8(r1)
    lbz     r0,0(r7)
    li      r30,0
    cmpwi   r0,0
    lis     r8,8
    beq-    L024a0da0
L024a0d7c:
    addi    r30,r30,1
    cmpw    r30,r8
    addi    r7,r7,1
    bgt-    L024a0d9c
    lbz     r5,0(r7)
    cmpwi   r5,0
    bne+    L024a0d7c
    b       L024a0da0
L024a0d9c:
    li      r30,0
L024a0da0:
    lwz     r0,8(r27)
    subf    r4,r22,r0
    cmpw    r30,r4
    blt-    L024a0db4
    addi    r30,r4,-1
L024a0db4:
    cmpwi   r30,0
    ble-    L024a0df8
    lwz     r6,12(r1)
    lwz     r0,20(r6)
    mtctr   r0
    add     r21,r23,r22
    addi    r3,r1,8
    bctrl
    lwz     r4,8(r1)
    li      r6,0
    mr      r5,r30
    mr      r3,r21
    bl      ext_029aacf0
    add     r11,r22,r30
    cmpw    r11,r31
    ble-    L024a0df8
    stbx    r29,r23,r11
L024a0df8:
    subf    r28,r25,r28
    cmplwi  r28,30
    bge-    L024a0f34
    lwz     r8,60(r24)
    cmplw   r28,r8
    lwz     r6,64(r24)
    bge-    L024a0e1c
    slwi    r9,r28,2
    add     r6,r6,r9
L024a0e1c:
    lwz     r0,0(r6)
    lwz     r10,4(r27)
    stw     r26,20(r1)
    stw     r0,16(r1)
    lwz     r11,20(r10)
    mtctr   r11
    lwz     r30,0(r27)
    mr      r3,r27
    bctrl
    lwz     r6,0(r27)
    lbz     r12,0(r6)
    li      r31,0
    cmpwi   r12,0
    lis     r7,8
    beq-    L024a0e7c
L024a0e58:
    addi    r31,r31,1
    cmpw    r31,r7
    addi    r6,r6,1
    bgt-    L024a0e78
    lbz     r0,0(r6)
    cmpwi   r0,0
    bne+    L024a0e58
    b       L024a0e7c
L024a0e78:
    li      r31,0
L024a0e7c:
    lwz     r4,20(r1)
    mr.     r26,r31
    lwz     r5,20(r4)
    bge-    L024a0e90
    li      r26,0
L024a0e90:
    mtctr   r5
    addi    r3,r1,16
    bctrl
    lwz     r4,16(r1)
    lbz     r6,0(r4)
    li      r28,0
    cmpwi   r6,0
    lis     r5,8
    beq-    L024a0ed8
L024a0eb4:
    addi    r28,r28,1
    cmpw    r28,r5
    addi    r4,r4,1
    bgt-    L024a0ed4
    lbz     r7,0(r4)
    cmpwi   r7,0
    bne+    L024a0eb4
    b       L024a0ed8
L024a0ed4:
    li      r28,0
L024a0ed8:
    lwz     r0,8(r27)
    subf    r10,r26,r0
    cmpw    r28,r10
    blt-    L024a0eec
    addi    r28,r10,-1
L024a0eec:
    cmpwi   r28,0
    ble-    L024a1680
    lwz     r8,20(r1)
    lwz     r9,20(r8)
    mtctr   r9
    add     r27,r30,r26
    addi    r3,r1,16
    bctrl
    lwz     r4,16(r1)
    li      r6,0
    mr      r5,r28
    mr      r3,r27
    bl      ext_029aacf0
    add     r0,r26,r28
    cmpw    r0,r31
    ble-    L024a1680
    stbx    r29,r30,r0
    b       L024a1680
L024a0f34:
    addi    r28,r28,-30
    cmplwi  r28,8
    bge-    L024a10e0
    lwz     r11,60(r24)
    cmplwi  r11,4
    lwz     r8,64(r24)
    ble-    L024a0f54
    addi    r8,r8,16
L024a0f54:
    lwz     r4,0(r8)
    lwz     r12,4(r27)
    stw     r26,28(r1)
    stw     r4,24(r1)
    lwz     r0,20(r12)
    mtctr   r0
    lwz     r26,0(r27)
    mr      r3,r27
    bctrl
    lwz     r12,0(r27)
    lbz     r4,0(r12)
    li      r30,0
    cmpwi   r4,0
    lis     r4,8
    beq-    L024a0fb4
L024a0f90:
    addi    r30,r30,1
    cmpw    r30,r4
    addi    r12,r12,1
    bgt-    L024a0fb0
    lbz     r5,0(r12)
    cmpwi   r5,0
    bne+    L024a0f90
    b       L024a0fb4
L024a0fb0:
    li      r30,0
L024a0fb4:
    lwz     r6,28(r1)
    mr.     r25,r30
    lwz     r7,20(r6)
    bge-    L024a0fc8
    li      r25,0
L024a0fc8:
    mtctr   r7
    addi    r3,r1,24
    bctrl
    lwz     r10,24(r1)
    lbz     r0,0(r10)
    li      r31,0
    cmpwi   r0,0
    lis     r0,8
    beq-    L024a1010
L024a0fec:
    addi    r31,r31,1
    cmpw    r31,r0
    addi    r10,r10,1
    bgt-    L024a100c
    lbz     r9,0(r10)
    cmpwi   r9,0
    bne+    L024a0fec
    b       L024a1010
L024a100c:
    li      r31,0
L024a1010:
    lwz     r0,8(r27)
    subf    r9,r25,r0
    cmpw    r31,r9
    blt-    L024a1024
    addi    r31,r9,-1
L024a1024:
    cmpwi   r31,0
    ble-    L024a1068
    lwz     r10,28(r1)
    lwz     r0,20(r10)
    mtctr   r0
    add     r24,r26,r25
    addi    r3,r1,24
    bctrl
    lwz     r4,24(r1)
    li      r6,0
    mr      r5,r31
    mr      r3,r24
    bl      ext_029aacf0
    add     r0,r25,r31
    cmpw    r0,r30
    ble-    L024a1068
    stbx    r29,r26,r0
L024a1068:
    lwz     r12,4(r27)
    lwz     r4,20(r12)
    mtctr   r4
    mr      r3,r27
    bctrl
    lwz     r12,0(r27)
    mr      r8,r12
    lbz     r5,0(r8)
    li      r7,0
    cmpwi   r5,0
    lis     r9,8
    beq-    L024a10bc
L024a1098:
    addi    r7,r7,1
    cmpw    r7,r9
    addi    r8,r8,1
    bgt-    L024a10b8
    lbz     r6,0(r8)
    cmpwi   r6,0
    bne+    L024a1098
    b       L024a10bc
L024a10b8:
    li      r7,0
L024a10bc:
    lwz     r9,8(r27)
    addi    r8,r9,-1
    cmpw    r7,r8
    bge-    L024a1680
    addi    r10,r28,48
    add     r30,r12,r7
    stbx    r10,r12,r7
    stb     r29,1(r30)
    b       L024a1680
L024a10e0:
    addi    r28,r28,-8
    cmplwi  r28,8
    bge-    L024a128c
    lwz     r0,60(r24)
    cmplwi  r0,16
    lwz     r9,64(r24)
    ble-    L024a1100
    addi    r9,r9,64
L024a1100:
    lwz     r10,0(r9)
    lwz     r12,4(r27)
    stw     r26,36(r1)
    stw     r10,32(r1)
    lwz     r4,20(r12)
    mtctr   r4
    lwz     r26,0(r27)
    mr      r3,r27
    bctrl
    lwz     r9,0(r27)
    lbz     r5,0(r9)
    li      r31,0
    cmpwi   r5,0
    lis     r10,8
    beq-    L024a1160
L024a113c:
    addi    r31,r31,1
    cmpw    r31,r10
    addi    r9,r9,1
    bgt-    L024a115c
    lbz     r6,0(r9)
    cmpwi   r6,0
    bne+    L024a113c
    b       L024a1160
L024a115c:
    li      r31,0
L024a1160:
    lwz     r7,36(r1)
    mr.     r25,r31
    lwz     r8,20(r7)
    bge-    L024a1174
    li      r25,0
L024a1174:
    mtctr   r8
    addi    r3,r1,32
    bctrl
    lwz     r7,32(r1)
    lbz     r0,0(r7)
    li      r30,0
    cmpwi   r0,0
    lis     r8,8
    beq-    L024a11bc
L024a1198:
    addi    r30,r30,1
    cmpw    r30,r8
    addi    r7,r7,1
    bgt-    L024a11b8
    lbz     r11,0(r7)
    cmpwi   r11,0
    bne+    L024a1198
    b       L024a11bc
L024a11b8:
    li      r30,0
L024a11bc:
    lwz     r0,8(r27)
    subf    r8,r25,r0
    cmpw    r30,r8
    blt-    L024a11d0
    addi    r30,r8,-1
L024a11d0:
    cmpwi   r30,0
    ble-    L024a1214
    lwz     r12,36(r1)
    lwz     r0,20(r12)
    mtctr   r0
    add     r24,r26,r25
    addi    r3,r1,32
    bctrl
    lwz     r4,32(r1)
    li      r6,0
    mr      r5,r30
    mr      r3,r24
    bl      ext_029aacf0
    add     r0,r25,r30
    cmpw    r0,r31
    ble-    L024a1214
    stbx    r29,r26,r0
L024a1214:
    lwz     r4,4(r27)
    lwz     r5,20(r4)
    mtctr   r5
    mr      r3,r27
    bctrl
    lwz     r12,0(r27)
    mr      r5,r12
    lbz     r6,0(r5)
    li      r11,0
    cmpwi   r6,0
    lis     r6,8
    beq-    L024a1268
L024a1244:
    addi    r11,r11,1
    cmpw    r11,r6
    addi    r5,r5,1
    bgt-    L024a1264
    lbz     r7,0(r5)
    cmpwi   r7,0
    bne+    L024a1244
    b       L024a1268
L024a1264:
    li      r11,0
L024a1268:
    lwz     r9,8(r27)
    addi    r0,r9,-1
    cmpw    r11,r0
    bge-    L024a1680
    addi    r10,r28,48
    add     r30,r12,r11
    stbx    r10,r12,r11
    stb     r29,1(r30)
    b       L024a1680
L024a128c:
    addi    r28,r28,-8
    cmplwi  r28,12
    bge-    L024a1680
    lwz     r4,60(r24)
    cmplwi  r4,29
    lwz     r12,64(r24)
    ble-    L024a12ac
    addi    r12,r12,116
L024a12ac:
    lwz     r10,0(r12)
    lwz     r5,4(r27)
    stw     r26,44(r1)
    stw     r10,40(r1)
    lwz     r6,20(r5)
    mtctr   r6
    lwz     r25,0(r27)
    mr      r3,r27
    bctrl
    lwz     r5,0(r27)
    lbz     r7,0(r5)
    li      r31,0
    cmpwi   r7,0
    lis     r6,8
    beq-    L024a130c
L024a12e8:
    addi    r31,r31,1
    cmpw    r31,r6
    addi    r5,r5,1
    bgt-    L024a1308
    lbz     r0,0(r5)
    cmpwi   r0,0
    bne+    L024a12e8
    b       L024a130c
L024a1308:
    li      r31,0
L024a130c:
    lwz     r9,44(r1)
    mr.     r24,r31
    lwz     r10,20(r9)
    bge-    L024a1320
    li      r24,0
L024a1320:
    mtctr   r10
    addi    r3,r1,40
    bctrl
    lwz     r12,40(r1)
    lbz     r11,0(r12)
    li      r30,0
    cmpwi   r11,0
    lis     r4,8
    beq-    L024a1368
L024a1344:
    addi    r30,r30,1
    cmpw    r30,r4
    addi    r12,r12,1
    bgt-    L024a1364
    lbz     r0,0(r12)
    cmpwi   r0,0
    bne+    L024a1344
    b       L024a1368
L024a1364:
    li      r30,0
L024a1368:
    lwz     r0,8(r27)
    subf    r5,r24,r0
    cmpw    r30,r5
    blt-    L024a137c
    addi    r30,r5,-1
L024a137c:
    cmpwi   r30,0
    ble-    L024a13c0
    lwz     r4,44(r1)
    lwz     r5,20(r4)
    mtctr   r5
    add     r23,r25,r24
    addi    r3,r1,40
    bctrl
    lwz     r4,40(r1)
    li      r6,0
    mr      r5,r30
    mr      r3,r23
    bl      ext_029aacf0
    add     r12,r24,r30
    cmpw    r12,r31
    ble-    L024a13c0
    stbx    r29,r25,r12
L024a13c0:
    cmpwi   r28,10
    bgt-    L024a1560
    bge-    L024a1444
    lwz     r6,4(r27)
    lwz     r7,20(r6)
    mtctr   r7
    mr      r3,r27
    bctrl
    lwz     r12,0(r27)
    mr      r11,r12
    lbz     r8,0(r11)
    li      r5,0
    cmpwi   r8,0
    lis     r0,8
    beq-    L024a1420
L024a13fc:
    addi    r5,r5,1
    cmpw    r5,r0
    addi    r11,r11,1
    bgt-    L024a141c
    lbz     r9,0(r11)
    cmpwi   r9,0
    bne+    L024a13fc
    b       L024a1420
L024a141c:
    li      r5,0
L024a1420:
    lwz     r11,8(r27)
    addi    r0,r11,-1
    cmpw    r5,r0
    bge-    L024a1680
    addi    r4,r28,48
    add     r30,r12,r5
    stbx    r4,r12,r5
    stb     r29,1(r30)
    b       L024a1680
L024a1444:
    lis     r5,4106
    stw     r26,52(r1)
    addi    r5,r5,27434
    lwz     r6,4(r27)
    stw     r5,48(r1)
    lwz     r0,20(r6)
    mtctr   r0
    lwz     r30,0(r27)
    mr      r3,r27
    bctrl
    lwz     r6,0(r27)
    lbz     r8,0(r6)
    li      r31,0
    cmpwi   r8,0
    lis     r7,8
    beq-    L024a14a8
L024a1484:
    addi    r31,r31,1
    cmpw    r31,r7
    addi    r6,r6,1
    bgt-    L024a14a4
    lbz     r9,0(r6)
    cmpwi   r9,0
    bne+    L024a1484
    b       L024a14a8
L024a14a4:
    li      r31,0
L024a14a8:
    lwz     r10,52(r1)
    mr.     r26,r31
    lwz     r11,20(r10)
    bge-    L024a14bc
    li      r26,0
L024a14bc:
    mtctr   r11
    addi    r3,r1,48
    bctrl
    lwz     r4,48(r1)
    lbz     r12,0(r4)
    li      r28,0
    cmpwi   r12,0
    lis     r5,8
    beq-    L024a1504
L024a14e0:
    addi    r28,r28,1
    cmpw    r28,r5
    addi    r4,r4,1
    bgt-    L024a1500
    lbz     r0,0(r4)
    cmpwi   r0,0
    bne+    L024a14e0
    b       L024a1504
L024a1500:
    li      r28,0
L024a1504:
    lwz     r0,8(r27)
    subf    r7,r26,r0
    cmpw    r28,r7
    blt-    L024a1518
    addi    r28,r7,-1
L024a1518:
    cmpwi   r28,0
    ble-    L024a1680
    lwz     r6,52(r1)
    lwz     r7,20(r6)
    mtctr   r7
    add     r27,r30,r26
    addi    r3,r1,48
    bctrl
    lwz     r4,48(r1)
    li      r6,0
    mr      r5,r28
    mr      r3,r27
    bl      ext_029aacf0
    add     r0,r26,r28
    cmpw    r0,r31
    ble-    L024a1680
    stbx    r29,r30,r0
    b       L024a1680
L024a1560:
    cmpwi   r28,11
    bne-    L024a1680
    lis     r8,4106
    stw     r26,60(r1)
    addi    r8,r8,27437
    lwz     r9,4(r27)
    stw     r8,56(r1)
    lwz     r10,20(r9)
    mtctr   r10
    lwz     r30,0(r27)
    mr      r3,r27
    bctrl
    lwz     r10,0(r27)
    lbz     r0,0(r10)
    li      r31,0
    cmpwi   r0,0
    lis     r0,8
    beq-    L024a15cc
L024a15a8:
    addi    r31,r31,1
    cmpw    r31,r0
    addi    r10,r10,1
    bgt-    L024a15c8
    lbz     r12,0(r10)
    cmpwi   r12,0
    bne+    L024a15a8
    b       L024a15cc
L024a15c8:
    li      r31,0
L024a15cc:
    lwz     r4,60(r1)
    mr.     r26,r31
    lwz     r0,20(r4)
    bge-    L024a15e0
    li      r26,0
L024a15e0:
    mtctr   r0
    addi    r3,r1,56
    bctrl
    lwz     r8,56(r1)
    lbz     r6,0(r8)
    li      r28,0
    cmpwi   r6,0
    lis     r9,8
    beq-    L024a1628
L024a1604:
    addi    r28,r28,1
    cmpw    r28,r9
    addi    r8,r8,1
    bgt-    L024a1624
    lbz     r7,0(r8)
    cmpwi   r7,0
    bne+    L024a1604
    b       L024a1628
L024a1624:
    li      r28,0
L024a1628:
    lwz     r0,8(r27)
    subf    r6,r26,r0
    cmpw    r28,r6
    blt-    L024a163c
    addi    r28,r6,-1
L024a163c:
    cmpwi   r28,0
    ble-    L024a1680
    lwz     r10,60(r1)
    lwz     r0,20(r10)
    mtctr   r0
    add     r27,r30,r26
    addi    r3,r1,56
    bctrl
    lwz     r4,56(r1)
    li      r6,0
    mr      r5,r28
    mr      r3,r27
    bl      ext_029aacf0
    add     r0,r26,r28
    cmpw    r0,r31
    ble-    L024a1680
    stbx    r29,r30,r0
L024a1680:
    lmw     r21,68(r1)
    lwz     r0,116(r1)
    mtlr    r0
    addi    r1,r1,112
    blr
