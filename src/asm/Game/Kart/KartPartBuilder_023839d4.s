# Converted from the disassembly of 0x023839d4 (8716 bytes). Name is a placeholder.
    .text
    .globl KartPartBuilder_023839d4
KartPartBuilder_023839d4:
    stwu    r1,-320(r1)
    stmw    r14,248(r1)
    mflr    r0
    stw     r0,324(r1)
    mr      r29,r5
    lwz     r10,20(r4)
    mr      r31,r3
    cmpwi   r10,0
    lwz     r0,0(r29)
    beq-    L02383a34
    lwz     r11,28(r4)
    cmpwi   r11,0
    beq-    L02383a34
    cmpwi   r0,0
    blt-    L02383a34
    lhz     r6,82(r4)
    cmpw    r0,r6
    bge-    L02383a34
    mulli   r7,r0,500
    lwz     r8,12(r29)
    cmpwi   r10,0
    add     r25,r11,r7
    bne-    L02383a44
    b       L02383a80
L02383a34:
    cmpwi   r10,0
    lwz     r8,12(r29)
    addi    r25,r4,124
    beq-    L02383a80
L02383a44:
    lwz     r12,32(r4)
    cmpwi   r12,0
    beq-    L02383a80
    cmpwi   r8,0
    blt-    L02383a80
    lhz     r9,84(r4)
    cmpw    r8,r9
    bge-    L02383a80
    mulli   r0,r8,320
    cmpwi   r10,0
    lwz     r8,12(r29)
    add     r20,r12,r0
    lwz     r0,0(r29)
    bne-    L02383a94
    b       L02383aec
L02383a80:
    lwz     r8,12(r29)
    addi    r20,r4,624
    cmpwi   r10,0
    lwz     r0,0(r29)
    beq-    L02383aec
L02383a94:
    lwz     r5,44(r4)
    cmpwi   r5,0
    beq-    L02383aec
    cmpwi   r8,0
    blt-    L02383aec
    lhz     r11,108(r4)
    cmpw    r8,r11
    bge-    L02383aec
    cmpwi   r0,0
    blt-    L02383aec
    lhz     r12,90(r4)
    cmpw    r0,r12
    bge-    L02383aec
    mulli   r6,r8,30
    add     r7,r6,r0
    lwz     r9,16(r29)
    slwi    r0,r7,3
    cmpwi   r10,0
    add     r26,r5,r0
    lwz     r0,0(r29)
    bne-    L02383b00
    b       L02383b54
L02383aec:
    lwz     r9,16(r29)
    addi    r26,r4,1096
    cmpwi   r10,0
    lwz     r0,0(r29)
    beq-    L02383b54
L02383b00:
    lwz     r6,48(r4)
    cmpwi   r6,0
    beq-    L02383b54
    cmpwi   r9,0
    blt-    L02383b54
    lhz     r8,110(r4)
    cmpw    r9,r8
    bge-    L02383b54
    cmpwi   r0,0
    blt-    L02383b54
    lhz     r11,92(r4)
    cmpw    r0,r11
    bge-    L02383b54
    mulli   r12,r9,30
    add     r5,r12,r0
    cmpwi   r10,0
    slwi    r7,r5,4
    lwz     r9,16(r29)
    add     r23,r6,r7
    bne-    L02383b64
    b       L02383ba0
L02383b54:
    cmpwi   r10,0
    lwz     r9,16(r29)
    addi    r23,r4,1104
    beq-    L02383ba0
L02383b64:
    lwz     r7,40(r4)
    cmpwi   r7,0
    beq-    L02383ba0
    cmpwi   r9,0
    blt-    L02383ba0
    lhz     r8,88(r4)
    cmpw    r9,r8
    bge-    L02383ba0
    slwi    r9,r9,3
    lwz     r11,20(r29)
    add     r0,r7,r9
    cmpwi   r10,0
    stw     r0,16(r1)
    bne-    L02383bb4
    b       L02383bf4
L02383ba0:
    lwz     r11,20(r29)
    addi    r0,r4,1088
    cmpwi   r10,0
    stw     r0,16(r1)
    beq-    L02383bf4
L02383bb4:
    lwz     r8,36(r4)
    cmpwi   r8,0
    beq-    L02383bf4
    cmpwi   r11,0
    blt-    L02383bf4
    lhz     r10,86(r4)
    cmpw    r11,r10
    bge-    L02383bf4
    mulli   r11,r11,144
    lwz     r12,72(r25)
    li      r30,0
    clrlwi. r0,r12,31
    add     r21,r8,r11
    mr      r28,r30
    beq-    L02383c1c
    b       L02383c0c
L02383bf4:
    lwz     r12,72(r25)
    li      r30,0
    addi    r21,r4,944
    clrlwi. r0,r12,31
    mr      r28,r30
    beq-    L02383c1c
L02383c0c:
    lwz     r4,32(r29)
    cmpwi   r4,0
    beq-    L02383c1c
    li      r28,1
L02383c1c:
    lis     r8,4119
    lwz     r8,3604(r8)
    lwz     r7,0(r29)
    cmpwi   r8,0
    clrlwi  r28,r28,24
    addi    r24,r7,1
    bne-    L02383c4c
    lis     r12,4120
    li      r5,1
    lis     r10,4119
    stb     r30,-31353(r12)
    stw     r5,3604(r10)
L02383c4c:
    lis     r10,4119
    lwz     r10,3600(r10)
    cmpwi   r10,0
    bne-    L02383c80
    lis     r3,4120
    li      r6,1
    lis     r4,4117
    addi    r3,r3,-31599
    lis     r8,4119
    addi    r4,r4,-3248
    li      r5,246
    stw     r6,3600(r8)
    bl      ext_029abc88
L02383c80:
    cmplwi  r24,31
    blt-    L02383ccc
    lis     r22,569
    addi    r22,r22,-25888
    mtctr   r22
    addi    r3,r1,204
    li      r8,0
    lis     r27,4104
    stw     r8,204(r1)
    addi    r27,r27,28904
    stw     r27,208(r1)
    bctrl
    lis     r19,4104
    cmpwi   r28,0
    addi    r19,r19,29356
    lwz     r5,204(r1)
    mr      r6,r19
    beq-    L02383d50
    b       L02383d48
L02383ccc:
    lis     r7,4120
    lbz     r10,-31353(r7)
    lis     r27,4119
    cmpwi   r10,0
    addi    r27,r27,5348
    bne-    L02383d04
    lis     r4,4120
    mr      r3,r27
    li      r5,31
    addi    r4,r4,-31599
    bl      ext_026200ec
    li      r0,1
    lis     r5,4120
    stb     r0,-31353(r5)
L02383d04:
    lis     r22,569
    slwi    r11,r24,2
    addi    r22,r22,-25888
    lwzx    r8,r11,r27
    mtctr   r22
    lis     r27,4104
    addi    r27,r27,28904
    stw     r27,208(r1)
    addi    r3,r1,204
    stw     r8,204(r1)
    bctrl
    lis     r19,4104
    cmpwi   r28,0
    addi    r19,r19,29356
    lwz     r5,204(r1)
    mr      r6,r19
    beq-    L02383d50
L02383d48:
    lis     r6,4104
    addi    r6,r6,29368
L02383d50:
    lis     r14,4104
    addi    r3,r31,812
    addi    r4,r14,29360
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r4,816(r31)
    lwz     r5,20(r4)
    mtctr   r5
    lwz     r24,2028(r31)
    addi    r3,r31,812
    bctrl
    lwz     r5,812(r31)
    lbz     r6,0(r5)
    li      r28,0
    cmpwi   r6,0
    lis     r0,8
    beq-    L02383dc4
L02383d94:
    addi    r28,r28,1
    cmpw    r28,r0
    addi    r5,r5,1
    bgt-    L02383dc0
    lbz     r8,0(r5)
    cmpwi   r8,0
    bne+    L02383d94
    lwz     r9,2036(r31)
    cmpw    r28,r9
    bge-    L02383dd0
    b       L02383dd4
L02383dc0:
    li      r28,0
L02383dc4:
    lwz     r9,2036(r31)
    cmpw    r28,r9
    blt-    L02383dd4
L02383dd0:
    addi    r28,r9,-1
L02383dd4:
    lwz     r9,816(r31)
    lwz     r10,20(r9)
    mtctr   r10
    addi    r3,r31,812
    bctrl
    lwz     r4,812(r31)
    li      r6,0
    mr      r5,r28
    mr      r3,r24
    bl      ext_029aacf0
    stbx    r30,r24,r28
    lwz     r0,72(r25)
    rlwinm  r0,r0,31,31,31
    stb     r0,3260(r31)
    lwz     r7,0(r29)
    cmpwi   r7,29
    bne-    L02383fb4
    lwz     r3,4(r29)
    addi    r4,r1,212
    addi    r5,r1,216
    bl      ext_0238359c
    lwz     r11,212(r1)
    lwz     r12,816(r31)
    cmpwi   r11,0
    li      r28,70
    lwz     r4,20(r12)
    bne-    L02383e44
    li      r28,77
L02383e44:
    mtctr   r4
    clrlwi  r28,r28,24
    addi    r3,r31,812
    bctrl
    lwz     r10,812(r31)
    mr      r11,r10
    lbz     r5,0(r11)
    li      r8,0
    cmpwi   r5,0
    lis     r0,8
    beq-    L02383ea4
L02383e70:
    addi    r8,r8,1
    cmpw    r8,r0
    addi    r11,r11,1
    bgt-    L02383ea0
    lbz     r6,0(r11)
    cmpwi   r6,0
    bne+    L02383e70
    lwz     r7,820(r31)
    addi    r0,r7,-1
    cmpw    r8,r0
    bge-    L02383ec0
    b       L02383eb4
L02383ea0:
    li      r8,0
L02383ea4:
    lwz     r7,820(r31)
    addi    r0,r7,-1
    cmpw    r8,r0
    bge-    L02383ec0
L02383eb4:
    stbx    r28,r10,r8
    add     r9,r10,r8
    stb     r30,1(r9)
L02383ec0:
    lis     r4,4104
    addi    r3,r31,1496
    lwz     r5,216(r1)
    addi    r4,r4,29444
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r11,1500(r31)
    lwz     r12,20(r11)
    mtctr   r12
    lwz     r24,2732(r31)
    addi    r3,r31,1496
    bctrl
    lwz     r9,1496(r31)
    lbz     r5,0(r9)
    li      r28,0
    cmpwi   r5,0
    lis     r0,8
    beq-    L02383f40
L02383f08:
    addi    r28,r28,1
    cmpw    r28,r0
    addi    r9,r9,1
    bgt-    L02383f3c
    lbz     r6,0(r9)
    cmpwi   r6,0
    bne+    L02383f08
    lwz     r12,2740(r31)
    lwz     r7,1500(r31)
    cmpw    r28,r12
    lwz     r8,20(r7)
    bge-    L02383f54
    b       L02383f58
L02383f3c:
    li      r28,0
L02383f40:
    lwz     r12,2740(r31)
    lwz     r7,1500(r31)
    cmpw    r28,r12
    lwz     r8,20(r7)
    blt-    L02383f58
L02383f54:
    addi    r28,r12,-1
L02383f58:
    mtctr   r8
    addi    r3,r31,1496
    bctrl
    lwz     r4,1496(r31)
    mr      r3,r24
    mr      r5,r28
    li      r6,0
    bl      ext_029aacf0
    stbx    r30,r24,r28
    mtctr   r22
    lwz     r24,3236(r31)
    lwz     r9,16(r25)
    stw     r27,52(r1)
    addi    r3,r1,48
    stw     r9,48(r1)
    bctrl
    lwz     r6,48(r1)
    lbz     r0,0(r6)
    li      r28,0
    cmpwi   r0,0
    lis     r0,8
    bne-    L02384124
    b       L0238415c
L02383fb4:
    cmpwi   r0,0
    beq-    L023840c8
    lwz     r9,816(r31)
    lwz     r0,20(r9)
    mtctr   r0
    addi    r3,r31,812
    bctrl
    lwz     r5,812(r31)
    lis     r4,4104
    lwz     r6,4(r29)
    addi    r4,r4,29564
    addi    r3,r31,1496
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r10,1500(r31)
    lwz     r11,20(r10)
    mtctr   r11
    lwz     r24,2732(r31)
    addi    r3,r31,1496
    bctrl
    lwz     r4,1496(r31)
    lbz     r12,0(r4)
    li      r28,0
    cmpwi   r12,0
    lis     r0,8
    beq-    L02384054
L0238401c:
    addi    r28,r28,1
    cmpw    r28,r0
    addi    r4,r4,1
    bgt-    L02384050
    lbz     r5,0(r4)
    cmpwi   r5,0
    bne+    L0238401c
    lwz     r12,2740(r31)
    lwz     r6,1500(r31)
    cmpw    r28,r12
    lwz     r7,20(r6)
    bge-    L02384068
    b       L0238406c
L02384050:
    li      r28,0
L02384054:
    lwz     r12,2740(r31)
    lwz     r6,1500(r31)
    cmpw    r28,r12
    lwz     r7,20(r6)
    blt-    L0238406c
L02384068:
    addi    r28,r12,-1
L0238406c:
    mtctr   r7
    addi    r3,r31,1496
    bctrl
    lwz     r4,1496(r31)
    mr      r3,r24
    mr      r5,r28
    li      r6,0
    bl      ext_029aacf0
    stbx    r30,r24,r28
    mtctr   r22
    lwz     r24,3236(r31)
    lwz     r9,16(r25)
    stw     r27,52(r1)
    addi    r3,r1,48
    stw     r9,48(r1)
    bctrl
    lwz     r6,48(r1)
    lbz     r0,0(r6)
    li      r28,0
    cmpwi   r0,0
    lis     r0,8
    beq-    L0238415c
    b       L02384124
L023840c8:
    lis     r4,4104
    addi    r3,r31,1496
    addi    r4,r4,29420
    crclr   4*cr1+eq
    bl      ext_02620314
    lis     r4,4104
    addi    r3,r31,2732
    addi    r4,r4,29420
    crclr   4*cr1+eq
    bl      ext_02620314
    mtctr   r22
    lwz     r24,3236(r31)
    lwz     r9,16(r25)
    stw     r27,52(r1)
    addi    r3,r1,48
    stw     r9,48(r1)
    bctrl
    lwz     r6,48(r1)
    lbz     r0,0(r6)
    li      r28,0
    cmpwi   r0,0
    lis     r0,8
    beq-    L0238415c
L02384124:
    addi    r28,r28,1
    cmpw    r28,r0
    addi    r6,r6,1
    bgt-    L02384158
    lbz     r8,0(r6)
    cmpwi   r8,0
    bne+    L02384124
    lwz     r11,3244(r31)
    lwz     r9,52(r1)
    cmpw    r28,r11
    lwz     r10,20(r9)
    blt-    L02384174
    b       L02384170
L02384158:
    li      r28,0
L0238415c:
    lwz     r11,3244(r31)
    lwz     r9,52(r1)
    cmpw    r28,r11
    lwz     r10,20(r9)
    blt-    L02384174
L02384170:
    addi    r28,r11,-1
L02384174:
    mtctr   r10
    addi    r3,r1,48
    bctrl
    lwz     r4,48(r1)
    li      r6,0
    mr      r5,r28
    mr      r3,r24
    bl      ext_029aacf0
    stbx    r30,r24,r28
    lwz     r12,0(r29)
    cmpwi   r12,29
    bne-    L023841ec
    lis     r4,4104
    addi    r3,r31,1420
    addi    r4,r4,29576
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r5,1424(r31)
    lwz     r6,20(r5)
    mtctr   r6
    lwz     r24,3040(r31)
    addi    r3,r31,1420
    bctrl
    lwz     r4,1420(r31)
    lbz     r7,0(r4)
    li      r28,0
    cmpwi   r7,0
    lis     r0,8
    bne-    L02384278
L023841e8:
    b       L023842b0
L023841ec:
    lwz     r11,3240(r31)
    lwz     r12,20(r11)
    mtctr   r12
    addi    r3,r31,3236
    bctrl
    lis     r4,4104
    addi    r3,r31,1420
    lwz     r5,3236(r31)
    addi    r4,r4,29480
    crclr   4*cr1+eq
    bl      ext_02620314
    lbz     r4,3260(r31)
    cmpwi   r4,0
    beq-    L02384248
    lwz     r7,0(r29)
    cmpwi   r7,16
    beq-    L02384248
    lis     r4,4104
    addi    r3,r31,1420
    lwz     r5,4(r29)
    addi    r4,r4,29376
    crclr   4*cr1+eq
    bl      ext_02620438
L02384248:
    lwz     r5,1424(r31)
    lwz     r6,20(r5)
    mtctr   r6
    lwz     r24,3040(r31)
    addi    r3,r31,1420
    bctrl
    lwz     r4,1420(r31)
    lbz     r7,0(r4)
    li      r28,0
    cmpwi   r7,0
    lis     r0,8
    beq+    L023841e8
L02384278:
    addi    r28,r28,1
    cmpw    r28,r0
    addi    r4,r4,1
    bgt-    L023842ac
    lbz     r8,0(r4)
    cmpwi   r8,0
    bne+    L02384278
    lwz     r12,3048(r31)
    lwz     r9,1424(r31)
    cmpw    r28,r12
    lwz     r0,20(r9)
    bge-    L023842c4
    b       L023842c8
L023842ac:
    li      r28,0
L023842b0:
    lwz     r12,3048(r31)
    lwz     r9,1424(r31)
    cmpw    r28,r12
    lwz     r0,20(r9)
    blt-    L023842c8
L023842c4:
    addi    r28,r12,-1
L023842c8:
    mtctr   r0
    addi    r3,r31,1420
    bctrl
    lwz     r4,1420(r31)
    li      r6,0
    mr      r5,r28
    mr      r3,r24
    bl      ext_029aacf0
    lis     r9,4119
    stbx    r30,r24,r28
    lwz     r9,3620(r9)
    lwz     r4,12(r29)
    cmpwi   r9,0
    addi    r24,r4,1
    bne-    L02384318
    lis     r12,4120
    li      r10,1
    lis     r11,4119
    stb     r30,-30871(r12)
    stw     r10,3620(r11)
L02384318:
    lis     r11,4119
    lwz     r11,3616(r11)
    cmpwi   r11,0
    bne-    L0238434c
    lis     r3,4120
    li      r11,1
    lis     r4,4117
    addi    r3,r3,-30870
    lis     r9,4119
    addi    r4,r4,-3000
    li      r5,190
    stw     r11,3616(r9)
    bl      ext_029abc88
L0238434c:
    cmplwi  r24,27
    blt-    L023843b8
    mtctr   r22
    addi    r3,r1,32
    li      r4,0
    stw     r4,32(r1)
    stw     r27,36(r1)
    bctrl
    lis     r4,4104
    addi    r3,r31,888
    lwz     r5,32(r1)
    addi    r4,r4,29384
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r6,892(r31)
    lwz     r7,20(r6)
    mtctr   r7
    lwz     r24,2072(r31)
    addi    r3,r31,888
    bctrl
    lwz     r10,888(r31)
    lbz     r0,0(r10)
    li      r28,0
    cmpwi   r0,0
    lis     r0,8
    bne-    L02384454
L023843b4:
    b       L0238448c
L023843b8:
    lis     r7,4120
    lbz     r12,-30871(r7)
    lis     r28,4119
    cmpwi   r12,0
    addi    r28,r28,6340
    bne-    L023843f0
    lis     r4,4120
    mr      r3,r28
    li      r5,27
    addi    r4,r4,-30870
    bl      ext_026200ec
    li      r4,1
    lis     r6,4120
    stb     r4,-30871(r6)
L023843f0:
    mtctr   r22
    slwi    r5,r24,2
    addi    r3,r1,32
    lwzx    r4,r5,r28
    stw     r27,36(r1)
    stw     r4,32(r1)
    bctrl
    lis     r4,4104
    addi    r3,r31,888
    lwz     r5,32(r1)
    addi    r4,r4,29384
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r6,892(r31)
    lwz     r7,20(r6)
    mtctr   r7
    lwz     r24,2072(r31)
    addi    r3,r31,888
    bctrl
    lwz     r10,888(r31)
    lbz     r0,0(r10)
    li      r28,0
    cmpwi   r0,0
    lis     r0,8
    beq+    L023843b4
L02384454:
    addi    r28,r28,1
    cmpw    r28,r0
    addi    r10,r10,1
    bgt-    L02384488
    lbz     r8,0(r10)
    cmpwi   r8,0
    bne+    L02384454
    lwz     r4,2080(r31)
    lwz     r9,892(r31)
    cmpw    r28,r4
    lwz     r10,20(r9)
    bge-    L023844a0
    b       L023844a4
L02384488:
    li      r28,0
L0238448c:
    lwz     r4,2080(r31)
    lwz     r9,892(r31)
    cmpw    r28,r4
    lwz     r10,20(r9)
    blt-    L023844a4
L023844a0:
    addi    r28,r4,-1
L023844a4:
    mtctr   r10
    addi    r3,r31,888
    bctrl
    lwz     r4,888(r31)
    mr      r3,r24
    mr      r5,r28
    li      r6,0
    bl      ext_029aacf0
    stbx    r30,r24,r28
    lwz     r5,36(r1)
    li      r12,128
    stb     r30,68(r1)
    lis     r4,4104
    stb     r30,195(r1)
    addi    r4,r4,29136
    stw     r12,64(r1)
    addi    r11,r1,68
    stw     r4,60(r1)
    stw     r11,56(r1)
    lwz     r6,20(r5)
    mtctr   r6
    addi    r3,r1,32
    bctrl
    lis     r4,4104
    lwz     r5,32(r1)
    addi    r3,r1,56
    addi    r4,r4,29324
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r7,60(r1)
    addi    r28,r31,2424
    lwz     r8,20(r7)
    mr      r24,r28
    mtctr   r8
    mr      r17,r24
    lwz     r18,0(r17)
    li      r16,0
    li      r30,0
    addi    r3,r1,56
    bctrl
    lwz     r10,56(r1)
    lbz     r0,0(r10)
    li      r12,0
    cmpwi   r0,0
    lis     r11,8
    bne-    L023845d8
    b       L0238462c
L02384560:
    cmplwi  r16,4
    bge-    L023845a4
    lwz     r7,60(r1)
    lwz     r8,20(r7)
    mr      r17,r24
    mtctr   r8
    lwz     r18,0(r17)
    addi    r3,r1,56
    li      r30,0
    bctrl
    lwz     r10,56(r1)
    lbz     r0,0(r10)
    li      r12,0
    cmpwi   r0,0
    lis     r11,8
    bne-    L023845d8
    b       L0238462c
L023845a4:
    lwz     r7,60(r1)
    lwz     r8,20(r7)
    mr      r17,r28
    mtctr   r8
    lwz     r18,0(r17)
    addi    r3,r1,56
    bctrl
    lwz     r10,56(r1)
    lbz     r0,0(r10)
    li      r12,0
    cmpwi   r0,0
    lis     r11,8
    beq-    L0238462c
L023845d8:
    addi    r12,r12,1
    cmpw    r12,r11
    addi    r10,r10,1
    bgt-    L02384610
    lbz     r9,0(r10)
    cmpwi   r9,0
    bne+    L023845d8
    lwz     r5,8(r17)
    lwz     r11,60(r1)
    mr      r15,r12
    cmpw    r15,r5
    lwz     r12,20(r11)
    bge-    L02384644
    b       L02384648
L02384610:
    lwz     r5,8(r17)
    lwz     r11,60(r1)
    li      r15,0
    cmpw    r15,r5
    lwz     r12,20(r11)
    bge-    L02384644
    b       L02384648
L0238462c:
    lwz     r5,8(r17)
    lwz     r11,60(r1)
    mr      r15,r12
    cmpw    r15,r5
    lwz     r12,20(r11)
    blt-    L02384648
L02384644:
    addi    r15,r5,-1
L02384648:
    mtctr   r12
    addi    r3,r1,56
    bctrl
    lwz     r4,56(r1)
    li      r6,0
    mr      r5,r15
    mr      r3,r18
    bl      ext_029aacf0
    addi    r16,r16,1
    stbx    r30,r18,r15
    cmpwi   r16,4
    addi    r24,r24,44
    blt+    L02384560
    lis     r4,4104
    stw     r27,24(r1)
    addi    r4,r4,29392
    stw     r4,20(r1)
    lwz     r5,4(r28)
    lwz     r6,20(r5)
    mtctr   r6
    lwz     r18,0(r28)
    mr      r3,r28
    bctrl
    lwz     r8,0(r28)
    lbz     r7,0(r8)
    li      r10,0
    cmpwi   r7,0
    lis     r0,8
    beq-    L02384728
L023846bc:
    addi    r10,r10,1
    cmpw    r10,r0
    addi    r8,r8,1
    bgt-    L023846f0
    lbz     r9,0(r8)
    cmpwi   r9,0
    bne+    L023846bc
    lwz     r11,24(r1)
    mr      r24,r10
    mr.     r17,r24
    lwz     r0,20(r11)
    bge-    L02384740
    b       L0238473c
L023846f0:
    lwz     r11,24(r1)
    lwz     r0,20(r11)
    li      r24,0
    mtctr   r0
    mr      r17,r24
    addi    r3,r1,20
    bctrl
    lwz     r5,20(r1)
    lbz     r12,0(r5)
    li      r9,0
    cmpwi   r12,0
    lis     r0,8
    beq-    L023847b0
    b       L02384764
L02384728:
    lwz     r11,24(r1)
    mr      r24,r10
    mr.     r17,r24
    lwz     r0,20(r11)
    bge-    L02384740
L0238473c:
    li      r17,0
L02384740:
    mtctr   r0
    addi    r3,r1,20
    bctrl
    lwz     r5,20(r1)
    lbz     r12,0(r5)
    li      r9,0
    cmpwi   r12,0
    lis     r0,8
    beq-    L023847b0
L02384764:
    addi    r9,r9,1
    cmpw    r9,r0
    addi    r5,r5,1
    bgt-    L02384798
    lbz     r4,0(r5)
    cmpwi   r4,0
    bne+    L02384764
    lwz     r6,8(r28)
    mr      r16,r9
    subf    r5,r17,r6
    cmpw    r16,r5
    blt-    L023847c8
    b       L023847c4
L02384798:
    lwz     r6,8(r28)
    li      r16,0
    subf    r5,r17,r6
    cmpw    r16,r5
    blt-    L023847c8
    b       L023847c4
L023847b0:
    lwz     r6,8(r28)
    mr      r16,r9
    subf    r5,r17,r6
    cmpw    r16,r5
    blt-    L023847c8
L023847c4:
    addi    r16,r5,-1
L023847c8:
    cmpwi   r16,0
    ble-    L0238480c
    lwz     r7,24(r1)
    lwz     r8,20(r7)
    mtctr   r8
    add     r15,r18,r17
    addi    r3,r1,20
    bctrl
    lwz     r4,20(r1)
    li      r6,0
    mr      r5,r16
    mr      r3,r15
    bl      ext_029aacf0
    add     r12,r17,r16
    cmpw    r12,r24
    ble-    L0238480c
    stbx    r30,r18,r12
L0238480c:
    lis     r9,4104
    stw     r27,24(r1)
    addi    r9,r9,29395
    stw     r9,20(r1)
    lwz     r10,48(r28)
    lwz     r11,20(r10)
    addi    r17,r28,44
    mtctr   r11
    lwz     r18,44(r28)
    mr      r3,r17
    bctrl
    lwz     r11,44(r28)
    lbz     r12,0(r11)
    li      r24,0
    cmpwi   r12,0
    lis     r4,8
    beq-    L02384884
L02384850:
    addi    r24,r24,1
    cmpw    r24,r4
    addi    r11,r11,1
    bgt-    L02384880
    lbz     r0,0(r11)
    cmpwi   r0,0
    bne+    L02384850
    lwz     r4,24(r1)
    mr.     r15,r24
    lwz     r5,20(r4)
    bge-    L02384898
    b       L02384894
L02384880:
    li      r24,0
L02384884:
    lwz     r4,24(r1)
    mr.     r15,r24
    lwz     r5,20(r4)
    bge-    L02384898
L02384894:
    li      r15,0
L02384898:
    mtctr   r5
    addi    r3,r1,20
    bctrl
    lwz     r8,20(r1)
    lbz     r6,0(r8)
    li      r16,0
    cmpwi   r6,0
    lis     r9,8
    beq-    L023848f0
L023848bc:
    addi    r16,r16,1
    cmpw    r16,r9
    addi    r8,r8,1
    bgt-    L023848ec
    lbz     r7,0(r8)
    cmpwi   r7,0
    bne+    L023848bc
    lwz     r8,8(r17)
    subf    r6,r15,r8
    cmpw    r16,r6
    blt-    L02384904
    b       L02384900
L023848ec:
    li      r16,0
L023848f0:
    lwz     r8,8(r17)
    subf    r6,r15,r8
    cmpw    r16,r6
    blt-    L02384904
L02384900:
    addi    r16,r6,-1
L02384904:
    cmpwi   r16,0
    ble-    L02384948
    lwz     r9,24(r1)
    lwz     r10,20(r9)
    mtctr   r10
    add     r17,r18,r15
    addi    r3,r1,20
    bctrl
    lwz     r4,20(r1)
    li      r6,0
    mr      r5,r16
    mr      r3,r17
    bl      ext_029aacf0
    add     r4,r15,r16
    cmpw    r4,r24
    ble-    L02384948
    stbx    r30,r18,r4
L02384948:
    lis     r11,4104
    stw     r27,24(r1)
    addi    r11,r11,29398
    stw     r11,20(r1)
    lwz     r12,92(r28)
    lwz     r0,20(r12)
    addi    r18,r28,88
    mtctr   r0
    lwz     r17,88(r28)
    mr      r3,r18
    bctrl
    lwz     r5,88(r28)
    lbz     r4,0(r5)
    li      r24,0
    cmpwi   r4,0
    lis     r0,8
    beq-    L023849c0
L0238498c:
    addi    r24,r24,1
    cmpw    r24,r0
    addi    r5,r5,1
    bgt-    L023849bc
    lbz     r6,0(r5)
    cmpwi   r6,0
    bne+    L0238498c
    lwz     r7,24(r1)
    mr.     r15,r24
    lwz     r8,20(r7)
    bge-    L023849d4
    b       L023849d0
L023849bc:
    li      r24,0
L023849c0:
    lwz     r7,24(r1)
    mr.     r15,r24
    lwz     r8,20(r7)
    bge-    L023849d4
L023849d0:
    li      r15,0
L023849d4:
    mtctr   r8
    addi    r3,r1,20
    bctrl
    lwz     r11,20(r1)
    lbz     r9,0(r11)
    li      r16,0
    cmpwi   r9,0
    lis     r12,8
    beq-    L02384a2c
L023849f8:
    addi    r16,r16,1
    cmpw    r16,r12
    addi    r11,r11,1
    bgt-    L02384a28
    lbz     r10,0(r11)
    cmpwi   r10,0
    bne+    L023849f8
    lwz     r11,8(r18)
    subf    r7,r15,r11
    cmpw    r16,r7
    blt-    L02384a40
    b       L02384a3c
L02384a28:
    li      r16,0
L02384a2c:
    lwz     r11,8(r18)
    subf    r7,r15,r11
    cmpw    r16,r7
    blt-    L02384a40
L02384a3c:
    addi    r16,r7,-1
L02384a40:
    cmpwi   r16,0
    ble-    L02384a84
    lwz     r12,24(r1)
    lwz     r4,20(r12)
    mtctr   r4
    add     r18,r17,r15
    addi    r3,r1,20
    bctrl
    lwz     r4,20(r1)
    li      r6,0
    mr      r5,r16
    mr      r3,r18
    bl      ext_029aacf0
    add     r5,r15,r16
    cmpw    r5,r24
    ble-    L02384a84
    stbx    r30,r17,r5
L02384a84:
    lis     r0,4104
    stw     r27,24(r1)
    addic   r0,r0,29401
    stw     r0,20(r1)
    lwz     r5,136(r28)
    lwz     r6,20(r5)
    addi    r18,r28,132
    mtctr   r6
    lwz     r24,132(r28)
    mr      r3,r18
    bctrl
    lwz     r9,132(r28)
    lbz     r7,0(r9)
    li      r28,0
    cmpwi   r7,0
    lis     r10,8
    beq-    L02384afc
L02384ac8:
    addi    r28,r28,1
    cmpw    r28,r10
    addi    r9,r9,1
    bgt-    L02384af8
    lbz     r8,0(r9)
    cmpwi   r8,0
    bne+    L02384ac8
    lwz     r11,24(r1)
    mr.     r17,r28
    lwz     r12,20(r11)
    bge-    L02384b10
    b       L02384b0c
L02384af8:
    li      r28,0
L02384afc:
    lwz     r11,24(r1)
    mr.     r17,r28
    lwz     r12,20(r11)
    bge-    L02384b10
L02384b0c:
    li      r17,0
L02384b10:
    mtctr   r12
    addi    r3,r1,20
    bctrl
    lwz     r8,20(r1)
    lbz     r0,0(r8)
    li      r11,0
    cmpwi   r0,0
    lis     r0,8
    beq-    L02384b80
L02384b34:
    addi    r11,r11,1
    cmpw    r11,r0
    addi    r8,r8,1
    bgt-    L02384b68
    lbz     r4,0(r8)
    cmpwi   r4,0
    bne+    L02384b34
    lwz     r5,8(r18)
    mr      r16,r11
    subf    r8,r17,r5
    cmpw    r16,r8
    blt-    L02384b98
    b       L02384b94
L02384b68:
    lwz     r5,8(r18)
    li      r16,0
    subf    r8,r17,r5
    cmpw    r16,r8
    blt-    L02384b98
    b       L02384b94
L02384b80:
    lwz     r5,8(r18)
    mr      r16,r11
    subf    r8,r17,r5
    cmpw    r16,r8
    blt-    L02384b98
L02384b94:
    addi    r16,r8,-1
L02384b98:
    cmpwi   r16,0
    ble-    L02384bdc
    lwz     r6,24(r1)
    lwz     r7,20(r6)
    mtctr   r7
    add     r18,r24,r17
    addi    r3,r1,20
    bctrl
    lwz     r4,20(r1)
    li      r6,0
    mr      r5,r16
    mr      r3,r18
    bl      ext_029aacf0
    add     r0,r17,r16
    cmpw    r0,r28
    ble-    L02384bdc
    stbx    r30,r24,r0
L02384bdc:
    lwz     r8,140(r20)
    clrlwi  r10,r8,31
    stb     r10,3261(r31)
    lwz     r9,4(r26)
    clrlwi  r11,r9,31
    stb     r11,3263(r31)
    lwz     r10,4(r26)
    lis     r24,4104
    lis     r28,4104
    rlwinm  r11,r10,31,31,31
    clrlwi. r0,r8,31
    stb     r11,3264(r31)
    beq-    L02384cac
    lhz     r8,0(r26)
    addi    r10,r1,32
    lbz     r7,3263(r31)
    lis     r5,4104
    lbz     r12,3260(r31)
    mr      r3,r31
    lwz     r9,16(r25)
    addi    r6,r28,29304
    addi    r4,r31,1572
    stw     r29,12(r1)
    addi    r5,r5,29404
    stw     r12,8(r1)
    bl      ext_02383630
    lbz     r0,3260(r31)
    mr      r3,r31
    lbz     r7,3264(r31)
    addi    r6,r24,29308
    lwz     r9,16(r25)
    lis     r5,4104
    lhz     r8,2(r26)
    addi    r5,r5,29404
    addi    r10,r1,32
    stw     r0,8(r1)
    addi    r4,r31,1648
    stw     r29,12(r1)
    bl      ext_02383630
    lwz     r8,1576(r31)
    lwz     r9,20(r8)
    mtctr   r9
    lwz     r17,2776(r31)
    addi    r3,r31,1572
    bctrl
    lwz     r5,1572(r31)
    lbz     r0,0(r5)
    li      r18,0
    cmpwi   r0,0
    lis     r6,8
    bne-    L02384d04
L02384ca8:
    b       L02384d3c
L02384cac:
    lis     r4,4104
    addi    r3,r31,1572
    addi    r4,r4,29492
    crclr   4*cr1+eq
    bl      ext_02620314
    lis     r4,4104
    addi    r3,r31,1648
    addi    r4,r4,29492
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r8,1576(r31)
    lwz     r9,20(r8)
    mtctr   r9
    lwz     r17,2776(r31)
    addi    r3,r31,1572
    bctrl
    lwz     r5,1572(r31)
    lbz     r0,0(r5)
    li      r18,0
    cmpwi   r0,0
    lis     r6,8
    beq+    L02384ca8
L02384d04:
    addi    r18,r18,1
    cmpw    r18,r6
    addi    r5,r5,1
    bgt-    L02384d38
    lbz     r12,0(r5)
    cmpwi   r12,0
    bne+    L02384d04
    lwz     r6,2784(r31)
    lwz     r4,1576(r31)
    cmpw    r18,r6
    lwz     r5,20(r4)
    bge-    L02384d50
    b       L02384d54
L02384d38:
    li      r18,0
L02384d3c:
    lwz     r6,2784(r31)
    lwz     r4,1576(r31)
    cmpw    r18,r6
    lwz     r5,20(r4)
    blt-    L02384d54
L02384d50:
    addi    r18,r6,-1
L02384d54:
    mtctr   r5
    addi    r3,r31,1572
    bctrl
    lwz     r4,1572(r31)
    li      r6,0
    mr      r5,r18
    mr      r3,r17
    bl      ext_029aacf0
    stbx    r30,r17,r18
    lwz     r6,1652(r31)
    lwz     r7,20(r6)
    mtctr   r7
    lwz     r17,2820(r31)
    addi    r3,r31,1648
    bctrl
    lwz     r10,1648(r31)
    lbz     r8,0(r10)
    li      r18,0
    cmpwi   r8,0
    lis     r11,8
    beq-    L02384de0
L02384da8:
    addi    r18,r18,1
    cmpw    r18,r11
    addi    r10,r10,1
    bgt-    L02384ddc
    lbz     r9,0(r10)
    cmpwi   r9,0
    bne+    L02384da8
    lwz     r7,2828(r31)
    lwz     r12,1652(r31)
    cmpw    r18,r7
    lwz     r0,20(r12)
    bge-    L02384df4
    b       L02384df8
L02384ddc:
    li      r18,0
L02384de0:
    lwz     r7,2828(r31)
    lwz     r12,1652(r31)
    cmpw    r18,r7
    lwz     r0,20(r12)
    blt-    L02384df8
L02384df4:
    addi    r18,r7,-1
L02384df8:
    mtctr   r0
    addi    r3,r31,1648
    bctrl
    lwz     r4,1648(r31)
    li      r6,0
    mr      r5,r18
    mr      r3,r17
    bl      ext_029aacf0
    stbx    r30,r17,r18
    lwz     r0,28(r29)
    cmpwi   r0,1
    beq-    L02384e30
    cmpwi   r0,2
    bne-    L02384fc8
L02384e30:
    lwz     r4,892(r31)
    lwz     r5,20(r4)
    mtctr   r5
    lwz     r17,1116(r31)
    addi    r3,r31,888
    bctrl
    lwz     r8,888(r31)
    lbz     r6,0(r8)
    li      r18,0
    cmpwi   r6,0
    lis     r9,8
    beq-    L02384e90
L02384e60:
    addi    r18,r18,1
    cmpw    r18,r9
    addi    r8,r8,1
    bgt-    L02384e8c
    lbz     r7,0(r8)
    cmpwi   r7,0
    bne+    L02384e60
    lwz     r8,1124(r31)
    cmpw    r18,r8
    bge-    L02384e9c
    b       L02384ea0
L02384e8c:
    li      r18,0
L02384e90:
    lwz     r8,1124(r31)
    cmpw    r18,r8
    blt-    L02384ea0
L02384e9c:
    addi    r18,r8,-1
L02384ea0:
    lwz     r8,892(r31)
    lwz     r9,20(r8)
    mtctr   r9
    addi    r3,r31,888
    bctrl
    lwz     r4,888(r31)
    li      r6,0
    mr      r5,r18
    mr      r3,r17
    bl      ext_029aacf0
    stbx    r30,r17,r18
    li      r10,83
    lwz     r0,28(r29)
    li      r12,76
    li      r11,77
    stb     r10,228(r1)
    cmpwi   r0,1
    stb     r12,230(r1)
    addi    r17,r1,228
    stb     r11,229(r1)
    beq-    L02384f44
    lwz     r7,36(r1)
    lwz     r8,20(r7)
    mtctr   r8
    addi    r16,r31,2336
    addi    r3,r1,32
    lis     r18,4104
    bctrl
    lbz     r9,33(r21)
    lwz     r5,32(r1)
    mr      r3,r16
    lbzx    r6,r17,r9
    addi    r4,r18,29272
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r10,140(r20)
    rlwinm  r0,r10,30,31,31
    rlwinm. r11,r10,30,31,31
    stb     r0,3262(r31)
    beq-    L02385074
    b       L02384fd8
L02384f44:
    lwz     r4,36(r1)
    lwz     r5,20(r4)
    mtctr   r5
    addi    r16,r31,2248
    addi    r3,r1,32
    bctrl
    lbz     r6,32(r21)
    lwz     r5,32(r1)
    lis     r18,4104
    lbzx    r6,r17,r6
    addi    r4,r18,29272
    mr      r3,r16
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r7,36(r1)
    lwz     r8,20(r7)
    mtctr   r8
    addi    r16,r31,2336
    addi    r3,r1,32
    bctrl
    lbz     r9,33(r21)
    lwz     r5,32(r1)
    mr      r3,r16
    lbzx    r6,r17,r9
    addi    r4,r18,29272
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r10,140(r20)
    rlwinm  r0,r10,30,31,31
    rlwinm. r11,r10,30,31,31
    stb     r0,3262(r31)
    beq-    L02385074
    b       L02384fd8
L02384fc8:
    li      r0,0
    clrlwi. r11,r0,24
    stb     r0,3262(r31)
    beq-    L02385074
L02384fd8:
    lhz     r8,0(r26)
    addi    r10,r1,32
    lbz     r7,3263(r31)
    lis     r5,4104
    lbz     r12,3260(r31)
    mr      r3,r31
    lwz     r9,16(r25)
    addi    r6,r28,29304
    addi    r4,r31,1724
    stw     r29,12(r1)
    addi    r5,r5,29312
    stw     r12,8(r1)
    bl      ext_02383630
    lbz     r0,3260(r31)
    mr      r3,r31
    lbz     r7,3264(r31)
    addi    r6,r24,29308
    lwz     r9,16(r25)
    lis     r5,4104
    lhz     r8,2(r26)
    addi    r5,r5,29312
    addi    r10,r1,32
    stw     r0,8(r1)
    addi    r4,r31,1800
    stw     r29,12(r1)
    bl      ext_02383630
    lwz     r6,1728(r31)
    lwz     r7,20(r6)
    mtctr   r7
    lwz     r21,2952(r31)
    addi    r3,r31,1724
    bctrl
    lwz     r7,1724(r31)
    lbz     r8,0(r7)
    li      r26,0
    cmpwi   r8,0
    lis     r0,8
    bne-    L023850cc
L02385070:
    b       L02385104
L02385074:
    lis     r4,4104
    addi    r3,r31,1724
    addi    r4,r4,29588
    crclr   4*cr1+eq
    bl      ext_02620314
    lis     r4,4104
    addi    r3,r31,1800
    addi    r4,r4,29588
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r6,1728(r31)
    lwz     r7,20(r6)
    mtctr   r7
    lwz     r21,2952(r31)
    addi    r3,r31,1724
    bctrl
    lwz     r7,1724(r31)
    lbz     r8,0(r7)
    li      r26,0
    cmpwi   r8,0
    lis     r0,8
    beq+    L02385070
L023850cc:
    addi    r26,r26,1
    cmpw    r26,r0
    addi    r7,r7,1
    bgt-    L02385100
    lbz     r9,0(r7)
    cmpwi   r9,0
    bne+    L023850cc
    lwz     r9,2960(r31)
    lwz     r10,1728(r31)
    cmpw    r26,r9
    lwz     r0,20(r10)
    bge-    L02385118
    b       L0238511c
L02385100:
    li      r26,0
L02385104:
    lwz     r9,2960(r31)
    lwz     r10,1728(r31)
    cmpw    r26,r9
    lwz     r0,20(r10)
    blt-    L0238511c
L02385118:
    addi    r26,r9,-1
L0238511c:
    mtctr   r0
    addi    r3,r31,1724
    bctrl
    lwz     r4,1724(r31)
    li      r6,0
    mr      r5,r26
    mr      r3,r21
    bl      ext_029aacf0
    stbx    r30,r21,r26
    lwz     r11,1804(r31)
    lwz     r12,20(r11)
    mtctr   r12
    lwz     r21,2996(r31)
    addi    r3,r31,1800
    bctrl
    lwz     r5,1800(r31)
    lbz     r0,0(r5)
    li      r26,0
    cmpwi   r0,0
    lis     r6,8
    beq-    L023851a8
L02385170:
    addi    r26,r26,1
    cmpw    r26,r6
    addi    r5,r5,1
    bgt-    L023851a4
    lbz     r4,0(r5)
    cmpwi   r4,0
    bne+    L02385170
    lwz     r10,3004(r31)
    lwz     r5,1804(r31)
    cmpw    r26,r10
    lwz     r6,20(r5)
    bge-    L023851bc
    b       L023851c0
L023851a4:
    li      r26,0
L023851a8:
    lwz     r10,3004(r31)
    lwz     r5,1804(r31)
    cmpw    r26,r10
    lwz     r6,20(r5)
    blt-    L023851c0
L023851bc:
    addi    r26,r10,-1
L023851c0:
    mtctr   r6
    addi    r3,r31,1800
    bctrl
    lwz     r4,1800(r31)
    li      r6,0
    mr      r5,r26
    mr      r3,r21
    bl      ext_029aacf0
    lis     r12,4119
    stbx    r30,r21,r26
    lwz     r12,3628(r12)
    lwz     r9,24(r29)
    cmpwi   r12,0
    addi    r21,r9,1
    bne-    L02385210
    lis     r12,4120
    li      r7,1
    lis     r10,4119
    stb     r30,-23439(r12)
    stw     r7,3628(r10)
L02385210:
    lis     r5,4119
    lwz     r5,3624(r5)
    cmpwi   r5,0
    bne-    L02385244
    lis     r3,4120
    li      r8,1
    lis     r4,4117
    addi    r3,r3,-23438
    lis     r7,4119
    addi    r4,r4,-2808
    li      r5,98
    stw     r8,3624(r7)
    bl      ext_029abc88
L02385244:
    cmplwi  r21,19
    blt-    L023852d4
    li      r5,0
    li      r0,75
    stw     r27,44(r1)
    mtctr   r22
    stb     r0,28(r1)
    li      r7,84
    stw     r5,40(r1)
    li      r0,66
    stb     r7,30(r1)
    addi    r3,r1,40
    stb     r0,29(r1)
    bctrl
    addi    r11,r1,28
    lwz     r12,28(r29)
    lis     r4,4104
    lwz     r6,40(r1)
    addi    r4,r4,29516
    lbzx    r5,r11,r12
    addi    r3,r31,964
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r4,968(r31)
    lwz     r5,20(r4)
    mtctr   r5
    lwz     r26,2116(r31)
    addi    r3,r31,964
    bctrl
    lwz     r12,964(r31)
    lbz     r6,0(r12)
    li      r27,0
    cmpwi   r6,0
    lis     r4,8
    bne-    L02385394
L023852d0:
    b       L023853cc
L023852d4:
    lis     r6,4120
    lbz     r9,-23439(r6)
    lis     r26,4119
    cmpwi   r9,0
    addi    r26,r26,10356
    bne-    L0238530c
    lis     r4,4120
    mr      r3,r26
    li      r5,19
    addi    r4,r4,-23438
    bl      ext_026200ec
    li      r0,1
    lis     r4,4120
    stb     r0,-23439(r4)
L0238530c:
    slwi    r10,r21,2
    stw     r27,44(r1)
    li      r0,75
    lwzx    r5,r10,r26
    mtctr   r22
    stb     r0,28(r1)
    li      r0,66
    stw     r5,40(r1)
    li      r7,84
    stb     r0,29(r1)
    addi    r3,r1,40
    stb     r7,30(r1)
    bctrl
    addi    r11,r1,28
    lwz     r12,28(r29)
    lis     r4,4104
    lwz     r6,40(r1)
    addi    r4,r4,29516
    lbzx    r5,r11,r12
    addi    r3,r31,964
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r4,968(r31)
    lwz     r5,20(r4)
    mtctr   r5
    lwz     r26,2116(r31)
    addi    r3,r31,964
    bctrl
    lwz     r12,964(r31)
    lbz     r6,0(r12)
    lis     r4,8
    cmpwi   r6,0
    li      r27,0
    beq+    L023852d0
L02385394:
    addi    r27,r27,1
    cmpw    r27,r4
    addi    r12,r12,1
    bgt-    L023853c8
    lbz     r0,0(r12)
    cmpwi   r0,0
    bne+    L02385394
    lwz     r11,2124(r31)
    lwz     r7,968(r31)
    cmpw    r27,r11
    lwz     r0,20(r7)
    bge-    L023853e0
    b       L023853e4
L023853c8:
    li      r27,0
L023853cc:
    lwz     r11,2124(r31)
    lwz     r7,968(r31)
    cmpw    r27,r11
    lwz     r0,20(r7)
    blt-    L023853e4
L023853e0:
    addi    r27,r11,-1
L023853e4:
    mtctr   r0
    addi    r3,r31,964
    bctrl
    lwz     r4,964(r31)
    li      r6,0
    mr      r5,r27
    mr      r3,r26
    bl      ext_029aacf0
    stbx    r30,r26,r27
    lwz     r0,28(r29)
    cmpwi   r0,0
    bne-    L0238551c
    lwz     r8,44(r1)
    lwz     r9,20(r8)
    mtctr   r9
    addi    r3,r1,40
    bctrl
    lis     r4,4104
    lwz     r5,40(r1)
    addi    r4,r4,29280
    addi    r3,r31,1116
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r10,1120(r31)
    lwz     r11,20(r10)
    mtctr   r11
    addi    r3,r31,1116
    addi    r22,r31,2248
    bctrl
    lis     r27,4104
    lwz     r5,1116(r31)
    mr      r3,r22
    addi    r4,r27,29316
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r12,1120(r31)
    lwz     r4,20(r12)
    mtctr   r4
    addi    r26,r22,44
    addi    r3,r31,1116
    bctrl
    lwz     r5,1116(r31)
    addi    r4,r27,29316
    mr      r3,r26
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r6,1120(r31)
    lwz     r0,20(r6)
    mtctr   r0
    addi    r3,r31,1116
    addi    r26,r31,2336
    bctrl
    lis     r27,4104
    lwz     r5,1116(r31)
    mr      r3,r26
    addi    r4,r27,29320
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r7,1120(r31)
    lwz     r8,20(r7)
    mtctr   r8
    addi    r3,r31,1116
    addi    r26,r22,132
    bctrl
    lwz     r5,1116(r31)
    mr      r3,r26
    addi    r4,r27,29320
    crclr   4*cr1+eq
    bl      ext_02620314
    lis     r6,4119
    lwz     r6,3636(r6)
    lis     r27,4120
    lwz     r10,16(r29)
    cmpwi   r6,0
    addi    r27,r27,-23570
    addi    r26,r10,1
    beq-    L023855d0
    b       L023855e0
L0238551c:
    cmpwi   r0,2
    bne-    L023855b0
    lwz     r9,44(r1)
    lwz     r10,20(r9)
    mtctr   r10
    addi    r3,r1,40
    bctrl
    lis     r4,4104
    lwz     r5,40(r1)
    addi    r3,r31,1116
    addi    r4,r4,29280
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r11,1120(r31)
    lwz     r12,20(r11)
    mtctr   r12
    addi    r3,r31,1116
    addi    r27,r31,2248
    bctrl
    lis     r4,4104
    lwz     r5,1116(r31)
    mr      r3,r27
    addi    r4,r4,29316
    crclr   4*cr1+eq
    bl      ext_02620314
    lwz     r4,1120(r31)
    lwz     r5,20(r4)
    mtctr   r5
    addi    r3,r31,1116
    addi    r26,r27,44
    bctrl
    lis     r4,4104
    lwz     r5,1116(r31)
    mr      r3,r26
    addi    r4,r4,29320
    crclr   4*cr1+eq
    bl      ext_02620314
L023855b0:
    lis     r6,4119
    lis     r27,4120
    lwz     r6,3636(r6)
    addi    r27,r27,-23570
    lwz     r10,16(r29)
    cmpwi   r6,0
    addi    r26,r10,1
    bne-    L023855e0
L023855d0:
    stb     r30,0(r27)
    li      r6,1
    lis     r7,4119
    stw     r6,3636(r7)
L023855e0:
    lis     r4,4119
    lwz     r4,3632(r4)
    cmpwi   r4,0
    bne-    L02385614
    lis     r3,4120
    li      r0,1
    lis     r4,4117
    addi    r3,r3,-24000
    lis     r12,4119
    addi    r4,r4,-2708
    li      r5,68
    stw     r0,3632(r12)
    bl      ext_029abc88
L02385614:
    cmplwi  r26,13
    blt-    L02385670
    li      r4,0
    addi    r3,r1,196
    bl      ext_02389a54
    addi    r3,r1,196
    bl      ext_02389aa4
    lis     r4,4104
    mr      r5,r3
    addi    r3,r31,1040
    addi    r4,r4,29288
    crclr   4*cr1+eq
    bl      ext_02620314
    addi    r3,r31,2160
    addi    r4,r31,1040
    li      r5,-1
    bl      ext_02389b10
    li      r4,0
    addi    r3,r23,12
    bl      ext_02389d50
    cmpwi   r3,0
    beq-    L023857bc
    b       L023856f4
L02385670:
    lbz     r8,0(r27)
    lis     r30,4119
    cmpwi   r8,0
    addi    r30,r30,10100
    bne-    L023856a0
    lis     r4,4120
    mr      r3,r30
    li      r5,13
    addi    r4,r4,-24000
    bl      ext_026200ec
    li      r0,1
    stb     r0,0(r27)
L023856a0:
    slwi    r9,r26,2
    lwzx    r4,r9,r30
    addi    r3,r1,196
    bl      ext_02389a54
    addi    r3,r1,196
    bl      ext_02389aa4
    lis     r4,4104
    mr      r5,r3
    addi    r3,r31,1040
    addi    r4,r4,29288
    crclr   4*cr1+eq
    bl      ext_02620314
    addi    r3,r31,2160
    addi    r4,r31,1040
    li      r5,-1
    bl      ext_02389b10
    li      r4,0
    addi    r3,r23,12
    bl      ext_02389d50
    cmpwi   r3,0
    beq-    L023857bc
L023856f4:
    lwz     r30,12(r25)
    lis     r0,4104
    stw     r19,220(r1)
    addic   r0,r0,29412
    addi    r3,r31,1040
    stw     r0,224(r1)
    bl      ext_02389aa4
    addi    r11,r1,220
    slwi    r10,r30,2
    mr      r5,r3
    lwzx    r6,r10,r11
    addi    r3,r31,2160
    addi    r4,r14,29360
    crclr   4*cr1+eq
    bl      ext_02620314
    addic   r0,r30,-1
    subfe   r12,r0,r30
    addi    r3,r31,2204
    addi    r4,r31,2160
    li      r5,-1
    stb     r12,3268(r31)
    bl      ext_02389b10
    lis     r4,4104
    addi    r3,r1,240
    addi    r4,r4,29332
    bl      ext_02389a54
    mr      r4,r3
    li      r5,-1
    addi    r3,r31,2204
    bl      ext_02389bf4
    li      r4,2
    addi    r3,r1,240
    bl      ext_02389a00
    lwz     r6,16(r1)
    li      r4,0
    addi    r3,r6,4
    bl      ext_02389d50
    stb     r3,3265(r31)
    li      r4,1
    addi    r3,r23,12
    bl      ext_02389d50
    stb     r3,3266(r31)
    li      r4,2
    addi    r3,r23,12
    bl      ext_02389d50
    lbz     r5,3265(r31)
    cmpwi   r5,0
    stb     r3,3267(r31)
    beq-    L023859f0
    b       L02385880
L023857bc:
    lwz     r30,0(r23)
    lis     r0,4104
    stw     r19,220(r1)
    addic   r0,r0,29412
    addi    r3,r31,1040
    stw     r0,224(r1)
    bl      ext_02389aa4
    addi    r11,r1,220
    slwi    r10,r30,2
    mr      r5,r3
    lwzx    r6,r10,r11
    addi    r3,r31,2160
    addi    r4,r14,29360
    crclr   4*cr1+eq
    bl      ext_02620314
    addic   r0,r30,-1
    subfe   r12,r0,r30
    addi    r3,r31,2204
    addi    r4,r31,2160
    li      r5,-1
    stb     r12,3268(r31)
    bl      ext_02389b10
    lis     r4,4104
    addi    r3,r1,240
    addi    r4,r4,29332
    bl      ext_02389a54
    mr      r4,r3
    li      r5,-1
    addi    r3,r31,2204
    bl      ext_02389bf4
    li      r4,2
    addi    r3,r1,240
    bl      ext_02389a00
    lwz     r6,16(r1)
    li      r4,0
    addi    r3,r6,4
    bl      ext_02389d50
    stb     r3,3265(r31)
    addi    r3,r23,12
    li      r4,1
    bl      ext_02389d50
    stb     r3,3266(r31)
    addi    r3,r23,12
    li      r4,2
    bl      ext_02389d50
    lbz     r5,3265(r31)
    cmpwi   r5,0
    stb     r3,3267(r31)
    beq-    L023859f0
L02385880:
    lhz     r8,8(r23)
    addi    r10,r1,196
    lbz     r7,3266(r31)
    lis     r5,4104
    lbz     r0,3260(r31)
    mr      r3,r31
    lwz     r9,16(r25)
    addi    r6,r28,29304
    addi    r4,r31,1876
    stw     r29,12(r1)
    addi    r5,r5,29340
    stw     r0,8(r1)
    bl      ext_02383630
    lbz     r0,3260(r31)
    mr      r3,r31
    lbz     r7,3267(r31)
    addi    r6,r24,29308
    lwz     r9,16(r25)
    lis     r5,4104
    lhz     r8,10(r23)
    addi    r5,r5,29340
    addi    r10,r1,196
    stw     r0,8(r1)
    addi    r4,r31,1952
    stw     r29,12(r1)
    bl      ext_02383630
    li      r5,-1
    addi    r4,r31,1876
    addi    r3,r31,2864
    bl      ext_02389b10
    addi    r4,r31,1952
    addi    r3,r31,2908
    li      r5,-1
    bl      ext_02389b10
    li      r4,2
    addi    r3,r1,196
    bl      ext_02389a00
    lis     r4,4104
    addi    r4,r4,29348
    addi    r3,r1,232
    bl      ext_02389a54
    mr      r4,r3
    addi    r3,r31,1192
    bl      ext_02389e44
    addi    r3,r1,232
    li      r4,2
    bl      ext_02389a00
    li      r5,-1
    addi    r4,r31,1192
    addi    r3,r31,2600
    bl      ext_02389b10
    lis     r4,4104
    addi    r5,r31,812
    mr      r3,r31
    addi    r4,r4,29296
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,888
    mr      r3,r31
    addi    r4,r4,29612
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,1040
    mr      r3,r31
    addi    r4,r4,29624
    bl      ext_023838c8
    lis     r4,4104
    mr      r3,r31
    addi    r5,r31,1192
    addi    r4,r4,29456
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,964
    mr      r3,r31
    addi    r4,r4,29636
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,1116
    mr      r3,r31
    addi    r4,r4,29552
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,1420
    mr      r3,r31
    addi    r4,r4,29648
    bl      ext_023838c8
    lbz     r6,3261(r31)
    lis     r30,4104
    cmpwi   r6,0
    addi    r30,r30,29664
    beq-    L02385b3c
    b       L02385b1c
L023859f0:
    lis     r4,4104
    addi    r3,r31,1876
    addi    r4,r4,29528
    crclr   4*cr1+eq
    bl      ext_02620314
    lis     r4,4104
    addi    r3,r31,1952
    addi    r4,r4,29528
    crclr   4*cr1+eq
    bl      ext_02620314
    addi    r3,r31,2864
    addi    r4,r31,1876
    li      r5,-1
    bl      ext_02389b10
    addi    r3,r31,2908
    addi    r4,r31,1952
    li      r5,-1
    bl      ext_02389b10
    addi    r3,r1,196
    li      r4,2
    bl      ext_02389a00
    lis     r4,4104
    addi    r3,r1,232
    addi    r4,r4,29348
    bl      ext_02389a54
    mr      r4,r3
    addi    r3,r31,1192
    bl      ext_02389e44
    addi    r3,r1,232
    li      r4,2
    bl      ext_02389a00
    li      r5,-1
    addi    r4,r31,1192
    addi    r3,r31,2600
    bl      ext_02389b10
    lis     r4,4104
    addi    r5,r31,812
    mr      r3,r31
    addi    r4,r4,29296
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,888
    mr      r3,r31
    addi    r4,r4,29612
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,1040
    mr      r3,r31
    addi    r4,r4,29624
    bl      ext_023838c8
    lis     r4,4104
    addi    r4,r4,29456
    addi    r5,r31,1192
    mr      r3,r31
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,964
    mr      r3,r31
    addi    r4,r4,29636
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,1116
    mr      r3,r31
    addi    r4,r4,29552
    bl      ext_023838c8
    lis     r4,4104
    mr      r3,r31
    addi    r4,r4,29648
    addi    r5,r31,1420
    bl      ext_023838c8
    lbz     r6,3261(r31)
    lis     r30,4104
    cmpwi   r6,0
    addi    r30,r30,29664
    beq-    L02385b3c
L02385b1c:
    addi    r5,r31,1572
    mr      r4,r30
    mr      r3,r31
    bl      ext_023838c8
    addi    r5,r31,1648
    mr      r4,r30
    mr      r3,r31
    bl      ext_023838c8
L02385b3c:
    lbz     r7,3262(r31)
    cmpwi   r7,0
    beq-    L02385b68
    addi    r5,r31,1724
    mr      r4,r30
    mr      r3,r31
    bl      ext_023838c8
    addi    r5,r31,1800
    mr      r4,r30
    mr      r3,r31
    bl      ext_023838c8
L02385b68:
    lbz     r8,3265(r31)
    cmpwi   r8,0
    beq-    L02385b9c
    lis     r4,4104
    addi    r5,r31,1876
    addi    r4,r4,29680
    mr      r3,r31
    bl      ext_023838c8
    lis     r4,4104
    addi    r5,r31,1952
    addi    r4,r4,29680
    mr      r3,r31
    bl      ext_023838c8
L02385b9c:
    lbz     r0,3260(r31)
    cmpwi   r0,0
    beq-    L02385bbc
    lis     r4,4104
    addi    r5,r31,1496
    addi    r4,r4,29468
    mr      r3,r31
    bl      ext_023838c8
L02385bbc:
    li      r9,2120
    li      r0,3276
    sth     r9,3258(r31)
    sth     r0,3256(r31)
    lmw     r14,248(r1)
    lwz     r0,324(r1)
    mtlr    r0
    addi    r1,r1,320
    blr
