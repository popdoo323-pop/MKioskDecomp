# Converted from the disassembly of 0x0218153c (4240 bytes). Name is a placeholder.
    .text
    .globl TrailManager_0218153c
TrailManager_0218153c:
    stwu    r1,-840(r1)
    stmw    r22,800(r1)
    mr      r30,r3
    mflr    r0
    mr      r3,r4
    stw     r0,844(r1)
    bl      ext_020e3894
    cmpwi   r3,0
    beq-    L021825b8
    lwz     r31,8(r3)
    lwz     r4,380(r31)
    lis     r29,4117
    addic.  r28,r4,1
    stw     r4,52(r30)
    ble-    L021815b8
    lwz     r3,9820(r29)
    bl      ext_0261c858
    lwz     r8,12(r3)
    lwz     r9,52(r8)
    mtctr   r9
    li      r5,64
    slwi    r4,r28,2
    bctrl
    cmpwi   r28,0
    mr      r10,r28
    bgt-    L021815a8
    li      r10,1
L021815a8:
    cmpwi   r3,0
    beq-    L021815b8
    stw     r3,40(r30)
    stw     r28,36(r30)
L021815b8:
    lwz     r0,36(r30)
    cmpwi   r0,0
    ble-    L021815e0
    li      r4,0
    mtctr   r0
    mr      r6,r4
L021815d0:
    lwz     r10,40(r30)
    stwx    r6,r10,r4
    addi    r4,r4,4
    bdnz+   L021815d0
L021815e0:
    li      r28,0
    mr      r3,r30
    stw     r28,48(r30)
    bl      ext_021814a4
    lwz     r12,344(r31)
    xori    r0,r12,5
    cntlzw  r4,r0
    srwi    r11,r4,5
    stb     r11,78(r30)
    lwz     r12,344(r31)
    cmpwi   r12,5
    li      r0,1
    beq-    L02181620
    cmpwi   r12,6
    beq-    L02181620
    li      r0,0
L02181620:
    clrlwi. r5,r0,24
    lis     r5,4117
    stb     r0,77(r30)
    lwz     r5,-3268(r5)
    beq-    L021817a4
    stb     r28,120(r5)
    li      r27,0
    lis     r25,536
    li      r3,16
    li      r26,-1
    addi    r25,r25,12996
    bl      ext_0260128c
    mr.     r24,r3
    beq-    L021816a8
    stw     r25,16(r1)
    mr.     r3,r24
    sth     r27,12(r1)
    sth     r26,14(r1)
    bne-    L0218167c
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0218169c
L0218167c:
    lis     r6,4098
    stw     r30,4(r3)
    addi    r6,r6,-8476
    stw     r6,0(r3)
    lwz     r8,12(r1)
    stw     r8,8(r3)
    lwz     r9,16(r1)
    stw     r9,12(r3)
L0218169c:
    lis     r10,4098
    addi    r10,r10,-8452
    stw     r10,0(r24)
L021816a8:
    li      r26,0
    li      r25,-1
    lis     r27,4098
    stw     r24,88(r30)
    lis     r24,536
    addi    r27,r27,-8428
    li      r3,16
    addi    r24,r24,13060
    bl      ext_0260128c
    mr.     r23,r3
    beq-    L0218171c
    stw     r24,24(r1)
    mr.     r3,r23
    sth     r26,20(r1)
    sth     r25,22(r1)
    bne-    L021816f8
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02181710
L021816f8:
    stw     r30,4(r3)
    stw     r27,0(r3)
    lwz     r12,20(r1)
    stw     r12,8(r3)
    lwz     r0,24(r1)
    stw     r0,12(r3)
L02181710:
    lis     r4,4098
    addi    r4,r4,-8404
    stw     r4,0(r23)
L0218171c:
    stw     r23,92(r30)
    li      r26,0
    lis     r24,536
    li      r3,16
    li      r25,-1
    addi    r24,r24,13100
    bl      ext_0260128c
    mr.     r23,r3
    beq-    L02181788
    stw     r24,32(r1)
    mr.     r3,r23
    sth     r26,28(r1)
    sth     r25,30(r1)
    bne-    L02181764
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0218177c
L02181764:
    stw     r30,4(r3)
    stw     r27,0(r3)
    lwz     r6,28(r1)
    stw     r6,8(r3)
    lwz     r7,32(r1)
    stw     r7,12(r3)
L0218177c:
    lis     r0,4098
    addic   r0,r0,-8404
    stw     r0,0(r23)
L02181788:
    stw     r23,96(r30)
    bl      ext_02421764
    lwz     r6,52(r30)
    cmpwi   r3,0
    lbz     r4,77(r30)
    bne-    L021817c0
    b       L021817c4
L021817a4:
    li      r0,1
    stb     r0,120(r5)
    bl      ext_02421764
    lbz     r4,77(r30)
    cmpwi   r3,0
    lwz     r6,52(r30)
    beq-    L021817c4
L021817c0:
    lwz     r3,428(r3)
L021817c4:
    mr      r5,r31
    bl      ext_02417a68
    lbz     r0,77(r30)
    cmpwi   r0,0
    beq-    L02181830
    bl      ext_02421764
    cmpwi   r3,0
    lwz     r0,88(r30)
    beq-    L021817ec
    lwz     r3,428(r3)
L021817ec:
    lis     r31,1
    addi    r31,r31,25740
    stwx    r0,r3,r31
    bl      ext_02421764
    cmpwi   r3,0
    lwz     r6,92(r30)
    beq-    L0218180c
    lwz     r3,428(r3)
L0218180c:
    add     r5,r3,r31
    stw     r6,8(r5)
    bl      ext_02421764
    cmpwi   r3,0
    lwz     r8,96(r30)
    beq-    L02181828
    lwz     r3,428(r3)
L02181828:
    add     r6,r3,r31
    stw     r8,16(r6)
L02181830:
    li      r3,20
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02181844
    bl      ext_0215e518
L02181844:
    lbz     r0,77(r30)
    stw     r3,948(r30)
    lis     r3,333
    cmpwi   r0,0
    addi    r3,r3,-22940
    beq-    L02181864
    lis     r3,224
    addi    r3,r3,-9832
L02181864:
    lis     r27,4098
    lis     r11,4098
    li      r5,0
    addi    r27,r27,-8756
    addi    r11,r11,-7640
    addi    r4,r1,104
    stw     r27,108(r1)
    mr      r7,r5
    li      r6,1
    stw     r11,104(r1)
    bl      ext_026197d4
    mr.     r4,r3
    stw     r3,64(r30)
    li      r31,1
    beq-    L021818ac
    lwz     r3,9820(r29)
    bl      ext_0261c940
    mr      r31,r3
L021818ac:
    lwz     r8,52(r30)
    slwi    r3,r8,2
    bl      ext_02601328
    lwz     r11,52(r30)
    li      r23,0
    cmpw    r23,r11
    stw     r3,56(r30)
    bge-    L02181988
    li      r25,1
    li      r24,0
L021818d4:
    bl      ext_02421764
    mr.     r10,r3
    beq-    L021818e4
    lwz     r10,428(r10)
L021818e4:
    mr      r4,r23
    mr      r3,r10
    bl      ext_02417594
    lwz     r26,56(r30)
    mr      r4,r23
    lbz     r5,77(r30)
    li      r3,0
    bl      ext_021a82b4
    stwx    r3,r26,r24
    lwz     r9,56(r30)
    lwzx    r3,r9,r24
    lwz     r4,652(r3)
    cmpwi   r4,0
    li      r26,1
    beq-    L02181934
    lwz     r3,9820(r29)
    bl      ext_0261c940
    lwz     r9,56(r30)
    mr      r26,r3
    lwzx    r3,r9,r24
L02181934:
    bl      ext_021a6f3c
    lwz     r4,56(r30)
    lwzx    r10,r4,r24
    lwz     r12,4(r10)
    lwz     r4,20(r12)
    stb     r25,540(r4)
    lwz     r5,56(r30)
    lwzx    r7,r5,r24
    lwz     r3,16(r7)
    li      r4,1
    bl      ext_02166a48
    cmpwi   r26,1
    beq-    L02181974
    lwz     r3,9820(r29)
    mr      r4,r26
    bl      ext_0261c940
L02181974:
    lwz     r7,52(r30)
    addi    r23,r23,1
    cmpw    r23,r7
    addi    r24,r24,4
    blt+    L021818d4
L02181988:
    cmpwi   r31,1
    beq-    L0218199c
    lwz     r3,9820(r29)
    mr      r4,r31
    bl      ext_0261c940
L0218199c:
    lbz     r9,78(r30)
    cmpwi   r9,0
    beq-    L02182430
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L021819b8
    lwz     r3,432(r3)
L021819b8:
    lwz     r7,228(r3)
    addi    r4,r1,36
    addi    r3,r7,348
    bl      ext_0242bf70
    lwz     r12,36(r1)
    cmpwi   r12,-1
    beq-    L02182430
    li      r0,0
    addi    r10,r1,672
    stb     r0,672(r1)
    li      r11,128
    stw     r10,660(r1)
    lis     r26,4098
    stw     r11,668(r1)
    addi    r26,r26,-8532
    stb     r0,799(r1)
    cmpwi   r12,29
    stw     r26,664(r1)
    beq-    L02181aec
    lis     r4,4119
    lwz     r4,3604(r4)
    addi    r24,r12,1
    cmpwi   r4,0
    lis     r31,4120
    bne-    L02181a2c
    stb     r28,-31353(r31)
    li      r0,1
    lis     r7,4119
    stw     r0,3604(r7)
L02181a2c:
    lis     r12,4119
    lwz     r12,3600(r12)
    cmpwi   r12,0
    bne-    L02181a60
    lis     r3,4120
    li      r0,1
    lis     r4,4117
    addi    r3,r3,-31599
    lis     r6,4119
    addi    r4,r4,-11596
    li      r5,246
    stw     r0,3600(r6)
    bl      ext_029abc88
L02181a60:
    cmplwi  r24,31
    blt-    L02181a90
    lis     r4,4098
    addi    r3,r1,660
    addi    r4,r4,-7676
    li      r5,0
    crclr   4*cr1+eq
    bl      ext_02620314
    bl      ext_02421764
    mr.     r24,r3
    bne-    L02181c84
    b       L02181c88
L02181a90:
    lbz     r0,-31353(r31)
    lis     r25,4119
    cmpwi   r0,0
    addi    r25,r25,5348
    bne-    L02181ac0
    lis     r4,4120
    mr      r3,r25
    li      r5,31
    addi    r4,r4,-31599
    bl      ext_026200ec
    li      r0,1
    stb     r0,-31353(r31)
L02181ac0:
    slwi    r6,r24,2
    lis     r4,4098
    lwzx    r5,r6,r25
    addi    r4,r4,-7676
    addi    r3,r1,660
    crclr   4*cr1+eq
    bl      ext_02620314
    bl      ext_02421764
    mr.     r24,r3
    bne-    L02181c84
    b       L02181c88
L02181aec:
    li      r31,0
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L02181b00
    lwz     r3,424(r3)
L02181b00:
    lwz     r0,208(r3)
    cmpwi   r0,-1
    bne-    L02181b80
    addi    r0,r1,72
    li      r5,0
    stw     r0,60(r1)
    addi    r3,r1,60
    stb     r5,103(r1)
    lis     r6,4098
    stb     r5,72(r1)
    li      r5,32
    addi    r6,r6,-8668
    mr      r4,r31
    stw     r5,68(r1)
    li      r12,0
    stw     r6,64(r1)
    bl      ext_02386fd0
    lwz     r7,64(r1)
    lwz     r0,20(r7)
    mtctr   r0
    addi    r3,r1,60
    bctrl
    lis     r4,4098
    lwz     r5,60(r1)
    addi    r4,r4,-7676
    addi    r3,r1,660
    crclr   4*cr1+eq
    bl      ext_02620314
    bl      ext_02421764
    mr.     r24,r3
    bne-    L02181c84
    b       L02181c88
L02181b80:
    lwz     r7,52(r3)
    cmplw   r0,r7
    li      r12,0
    bge-    L02181b9c
    lwz     r9,60(r3)
    slwi    r8,r0,2
    lwzx    r12,r8,r9
L02181b9c:
    cmpwi   r12,0
    beq-    L02181c18
    lbz     r10,488(r12)
    cmpwi   r10,0
    bne-    L02181bd4
    lwz     r11,596(r12)
    cmpwi   r11,0
    bne-    L02181bd4
    lwz     r7,472(r12)
    not     r12,r7
    addic   r0,r12,-1
    subfe.  r25,r0,r12
    beq-    L02181c18
    b       L02181be4
L02181bd4:
    li      r12,0
    addic   r0,r12,-1
    subfze. r25,r0
    beq-    L02181c18
L02181be4:
    bl      ext_02319c78
    lwz     r3,280(r3)
    mr      r4,r25
    bl      ext_023190c8
    mr      r31,r3
    bl      ext_02319c78
    lwz     r3,280(r3)
    mr      r4,r25
    bl      ext_02319098
    xori    r3,r3,1
    mr      r4,r31
    bl      ext_023898a4
    mr      r31,r3
L02181c18:
    addi    r0,r1,72
    li      r5,0
    stw     r0,60(r1)
    stb     r5,72(r1)
    lis     r6,4098
    stb     r5,103(r1)
    li      r5,32
    addi    r6,r6,-8668
    addi    r3,r1,60
    stw     r5,68(r1)
    mr      r4,r31
    stw     r6,64(r1)
    bl      ext_02386fd0
    lwz     r7,64(r1)
    lwz     r0,20(r7)
    mtctr   r0
    addi    r3,r1,60
    bctrl
    lis     r4,4098
    lwz     r5,60(r1)
    addi    r4,r4,-7676
    addi    r3,r1,660
    crclr   4*cr1+eq
    bl      ext_02620314
    bl      ext_02421764
    mr.     r24,r3
    beq-    L02181c88
L02181c84:
    addi    r24,r24,296
L02181c88:
    li      r5,128
    stw     r26,200(r1)
    li      r12,0
    stw     r5,204(r1)
    li      r9,9
    stb     r12,335(r1)
    addi    r0,r1,208
    stw     r9,348(r1)
    stw     r9,40(r1)
    addi    r3,r1,196
    addi    r4,r1,660
    stw     r0,196(r1)
    addi    r5,r1,40
    stb     r12,208(r1)
    bl      ext_02439bf8
    addi    r25,r24,40
    mr      r3,r25
    bl      ext_0262b790
    lwz     r0,348(r1)
    stw     r0,44(r1)
    lwz     r31,44(r1)
    cmpwi   r31,9
    stw     r31,48(r1)
    bne-    L02181e88
    stw     r28,356(r1)
    addi    r23,r1,372
    stb     r28,372(r1)
    li      r10,128
    stw     r23,360(r1)
    li      r11,-1
    stw     r10,368(r1)
    stw     r11,500(r1)
    stb     r28,499(r1)
    lwz     r12,200(r1)
    stw     r28,504(r1)
    stw     r26,364(r1)
    lwz     r0,20(r12)
    mtctr   r0
    addi    r3,r1,196
    bctrl
    lwz     r4,196(r1)
    lbz     r0,0(r4)
    li      r31,0
    cmpwi   r0,0
    lis     r0,8
    beq-    L02181d78
L02181d40:
    addi    r31,r31,1
    cmpw    r31,r0
    addi    r4,r4,1
    bgt-    L02181d74
    lbz     r6,0(r4)
    cmpwi   r6,0
    bne+    L02181d40
    lwz     r12,368(r1)
    lwz     r8,200(r1)
    cmpw    r31,r12
    lwz     r0,20(r8)
    bge-    L02181d8c
    b       L02181d90
L02181d74:
    li      r31,0
L02181d78:
    lwz     r12,368(r1)
    lwz     r8,200(r1)
    cmpw    r31,r12
    lwz     r0,20(r8)
    blt-    L02181d90
L02181d8c:
    addi    r31,r12,-1
L02181d90:
    mtctr   r0
    addi    r3,r1,196
    bctrl
    lwz     r4,196(r1)
    li      r6,0
    mr      r5,r31
    mr      r3,r23
    bl      ext_029aacf0
    stbx    r28,r23,r31
    lwz     r10,364(r1)
    lwz     r0,20(r10)
    mtctr   r0
    addi    r3,r1,360
    bctrl
    lwz     r11,360(r1)
    lbz     r5,0(r11)
    li      r6,0
    cmpwi   r5,0
    lis     r0,8
    beq-    L02181e44
L02181de0:
    addi    r6,r6,1
    cmpw    r6,r0
    addi    r11,r11,1
    bgt-    L02181e40
    lbz     r8,0(r11)
    cmpwi   r8,0
    bne+    L02181de0
    lwz     r10,364(r1)
    stw     r6,500(r1)
    lwz     r12,20(r10)
    mtctr   r12
    addi    r3,r1,360
    bctrl
    lwz     r4,500(r1)
    lwz     r3,360(r1)
    bl      ext_02601738
    stw     r3,504(r1)
    lwz     r4,4(r24)
    addi    r5,r1,356
    addi    r3,r24,4
    bl      ext_02183f84
    cmpwi   r3,0
    bne-    L0218206c
    b       L02182084
L02181e40:
    li      r6,0
L02181e44:
    lwz     r10,364(r1)
    stw     r6,500(r1)
    lwz     r12,20(r10)
    mtctr   r12
    addi    r3,r1,360
    bctrl
    lwz     r4,500(r1)
    lwz     r3,360(r1)
    bl      ext_02601738
    stw     r3,504(r1)
    lwz     r4,4(r24)
    addi    r5,r1,356
    addi    r3,r24,4
    bl      ext_02183f84
    cmpwi   r3,0
    bne-    L0218206c
    b       L02182084
L02181e88:
    lwz     r0,48(r1)
    addi    r23,r24,8
    cmplwi  r0,8
    stw     r0,112(r1)
    bge-    L02181eb0
    slwi    r0,r0,2
    lwzx    r0,r23,r0
    cmpwi   r0,0
    beq-    L02182084
    b       L02181ebc
L02181eb0:
    lwz     r0,0(r23)
    cmpwi   r0,0
    beq-    L02182084
L02181ebc:
    stw     r28,508(r1)
    addi    r22,r1,524
    stb     r28,524(r1)
    li      r5,128
    stw     r22,512(r1)
    li      r7,-1
    stw     r5,520(r1)
    stw     r7,652(r1)
    stb     r28,651(r1)
    lwz     r8,200(r1)
    stw     r28,656(r1)
    stw     r26,516(r1)
    lwz     r9,20(r8)
    mtctr   r9
    addi    r3,r1,196
    bctrl
    lwz     r8,196(r1)
    lbz     r10,0(r8)
    li      r26,0
    cmpwi   r10,0
    lis     r9,8
    beq-    L02181f4c
L02181f14:
    addi    r26,r26,1
    cmpw    r26,r9
    addi    r8,r8,1
    bgt-    L02181f48
    lbz     r0,0(r8)
    cmpwi   r0,0
    bne+    L02181f14
    lwz     r10,520(r1)
    lwz     r5,200(r1)
    cmpw    r26,r10
    lwz     r6,20(r5)
    bge-    L02181f60
    b       L02181f64
L02181f48:
    li      r26,0
L02181f4c:
    lwz     r10,520(r1)
    lwz     r5,200(r1)
    cmpw    r26,r10
    lwz     r6,20(r5)
    blt-    L02181f64
L02181f60:
    addi    r26,r10,-1
L02181f64:
    mtctr   r6
    addi    r3,r1,196
    bctrl
    lwz     r4,196(r1)
    li      r6,0
    mr      r5,r26
    mr      r3,r22
    bl      ext_029aacf0
    stbx    r28,r22,r26
    lwz     r8,516(r1)
    lwz     r9,20(r8)
    mtctr   r9
    addi    r3,r1,512
    bctrl
    lwz     r6,512(r1)
    lbz     r0,0(r6)
    li      r9,0
    cmpwi   r0,0
    lis     r7,8
    beq-    L02182008
L02181fb4:
    addi    r9,r9,1
    cmpw    r9,r7
    addi    r6,r6,1
    bgt-    L02182004
    lbz     r0,0(r6)
    cmpwi   r0,0
    bne+    L02181fb4
    lwz     r4,516(r1)
    stw     r9,652(r1)
    lwz     r0,20(r4)
    mtctr   r0
    addi    r3,r1,512
    bctrl
    lwz     r4,652(r1)
    lwz     r3,512(r1)
    bl      ext_02601738
    cmplwi  r31,8
    stw     r3,656(r1)
    blt-    L02182038
L02182000:
    b       L02182040
L02182004:
    li      r9,0
L02182008:
    lwz     r4,516(r1)
    stw     r9,652(r1)
    lwz     r0,20(r4)
    mtctr   r0
    addi    r3,r1,512
    bctrl
    lwz     r4,652(r1)
    lwz     r3,512(r1)
    bl      ext_02601738
    cmplwi  r31,8
    stw     r3,656(r1)
    bge+    L02182000
L02182038:
    slwi    r0,r31,2
    add     r23,r23,r0
L02182040:
    lwz     r7,0(r23)
    lbz     r0,132(r7)
    cmpwi   r0,0
    li      r3,0
    beq-    L02182064
    lwz     r4,120(r7)
    addi    r5,r1,508
    addi    r3,r7,120
    bl      ext_02183f84
L02182064:
    cmpwi   r3,0
    beq-    L02182084
L0218206c:
    mr      r26,r3
    mr      r3,r25
    bl      ext_0262b7c4
    cmpwi   r26,0
    beq-    L02182090
    b       L02182404
L02182084:
    mr      r3,r25
    li      r26,0
    bl      ext_0262b7c4
L02182090:
    lwz     r3,9820(r29)
    bl      ext_0261c858
    lwz     r0,348(r1)
    mr      r26,r3
    mr      r3,r24
    addi    r4,r1,196
    addi    r5,r1,56
    stw     r0,56(r1)
    bl      ext_02439cec
    mr.     r29,r3
    beq-    L02182400
    stw     r28,72(r1)
    addi    r0,r1,116
    stw     r28,88(r1)
    li      r31,32
    stw     r28,84(r1)
    stw     r28,68(r1)
    stw     r28,96(r1)
    stw     r27,64(r1)
    stw     r28,92(r1)
    stw     r28,100(r1)
    stw     r28,120(r1)
    stw     r28,116(r1)
    stw     r31,76(r1)
    stw     r28,128(r1)
    lwz     r10,196(r1)
    stw     r0,124(r1)
    stw     r28,80(r1)
    addi    r3,r1,132
    stw     r10,60(r1)
    bl      ext_02619210
    li      r10,0
    lis     r8,4098
    addi    r4,r1,160
    stb     r10,191(r1)
    lis     r6,4098
    stw     r26,68(r1)
    addi    r6,r6,-8668
    stw     r26,72(r1)
    addi    r8,r8,-8380
    stw     r4,148(r1)
    lis     r0,4098
    stb     r10,160(r1)
    addi    r10,r1,116
    stw     r8,192(r1)
    addic   r0,r0,-8316
    stw     r6,152(r1)
    stw     r10,92(r1)
    lis     r3,4117
    stw     r31,156(r1)
    stw     r0,144(r1)
    addi    r4,r1,60
    stw     r31,80(r1)
    lwz     r12,0(r29)
    lis     r31,4110
    lwz     r3,9856(r3)
    addi    r31,r31,25536
    stw     r12,96(r1)
    bl      ext_0262578c
    lis     r11,4119
    lwz     r11,3184(r11)
    cmpwi   r11,0
    mr      r27,r3
    bne-    L021821ac
    lis     r0,4098
    li      r4,1
    lis     r12,4119
    addic   r0,r0,-8572
    lis     r10,4119
    stw     r4,3184(r12)
    stw     r0,10276(r10)
L021821ac:
    cmpwi   r27,0
    beq-    L021821f8
    lwz     r6,0(r27)
    lwz     r7,12(r6)
    lis     r4,4119
    mtctr   r7
    addi    r4,r4,10276
    mr      r3,r27
    bctrl
    cmpwi   r3,0
    beq-    L021821f8
    addi    r26,r27,-204
    li      r4,0
    addi    r3,r1,116
    stw     r31,144(r1)
    bl      ext_02624aa0
    cmpwi   r26,0
    beq-    L02182400
    b       L02182220
L021821f8:
    li      r26,0
    addi    r3,r1,116
    mr      r4,r26
    stw     r31,144(r1)
    bl      ext_02624aa0
    li      r26,0
    cmpwi   r26,0
    stw     r26,956(r30)
    beq-    L02182424
    b       L02182410
L02182220:
    lwz     r8,200(r1)
    lwz     r9,20(r8)
    mtctr   r9
    lwz     r27,16(r26)
    addi    r3,r1,196
    bctrl
    lwz     r7,196(r1)
    lbz     r10,0(r7)
    li      r31,0
    cmpwi   r10,0
    lis     r9,8
    beq-    L02182288
L02182250:
    addi    r31,r31,1
    cmpw    r31,r9
    addi    r7,r7,1
    bgt-    L02182284
    lbz     r11,0(r7)
    cmpwi   r11,0
    bne+    L02182250
    lwz     r7,24(r26)
    lwz     r12,200(r1)
    cmpw    r31,r7
    lwz     r0,20(r12)
    blt-    L021822a0
    b       L0218229c
L02182284:
    li      r31,0
L02182288:
    lwz     r7,24(r26)
    lwz     r12,200(r1)
    cmpw    r31,r7
    lwz     r0,20(r12)
    blt-    L021822a0
L0218229c:
    addi    r31,r7,-1
L021822a0:
    mtctr   r0
    addi    r3,r1,196
    bctrl
    lwz     r4,196(r1)
    li      r6,0
    mr      r5,r31
    mr      r3,r27
    bl      ext_029aacf0
    stbx    r28,r27,r31
    lwz     r4,20(r26)
    lwz     r5,20(r4)
    mtctr   r5
    addi    r3,r26,16
    bctrl
    lwz     r12,16(r26)
    lbz     r6,0(r12)
    li      r7,0
    cmpwi   r6,0
    lis     r4,8
    beq-    L02182388
L021822f0:
    addi    r7,r7,1
    cmpw    r7,r4
    addi    r12,r12,1
    bgt-    L02182384
    lbz     r8,0(r12)
    cmpwi   r8,0
    bne+    L021822f0
    lwz     r9,20(r26)
    stw     r7,156(r26)
    lwz     r10,20(r9)
    mtctr   r10
    addi    r3,r26,16
    bctrl
    lwz     r3,16(r26)
    lwz     r4,156(r26)
    bl      ext_02601738
    stw     r3,160(r26)
    lwz     r12,348(r1)
    lwz     r11,164(r26)
    stw     r12,52(r1)
    lwz     r0,68(r11)
    mtctr   r0
    addi    r4,r1,52
    mr      r3,r26
    li      r5,0
    bctrl
    mr      r3,r25
    bl      ext_0262b790
    mr      r3,r26
    addi    r4,r29,4
    bl      ext_02436074
    mr      r3,r25
    bl      ext_0262b7c4
    cmpwi   r26,0
    stw     r26,956(r30)
    beq-    L02182424
    b       L02182410
L02182384:
    li      r7,0
L02182388:
    lwz     r9,20(r26)
    stw     r7,156(r26)
    lwz     r10,20(r9)
    mtctr   r10
    addi    r3,r26,16
    bctrl
    lwz     r3,16(r26)
    lwz     r4,156(r26)
    bl      ext_02601738
    stw     r3,160(r26)
    lwz     r12,348(r1)
    lwz     r11,164(r26)
    stw     r12,52(r1)
    lwz     r0,68(r11)
    mtctr   r0
    addi    r4,r1,52
    mr      r3,r26
    li      r5,0
    bctrl
    mr      r3,r25
    bl      ext_0262b790
    mr      r3,r26
    addi    r4,r29,4
    bl      ext_02436074
    mr      r3,r25
    bl      ext_0262b7c4
    cmpwi   r26,0
    stw     r26,956(r30)
    beq-    L02182424
    b       L02182410
L02182400:
    li      r26,0
L02182404:
    cmpwi   r26,0
    stw     r26,956(r30)
    beq-    L02182424
L02182410:
    lwz     r6,164(r26)
    lwz     r7,36(r6)
    mtctr   r7
    mr      r3,r26
    bctrl
L02182424:
    addi    r3,r1,660
    li      r4,0
    bl      ext_02183660
L02182430:
    mr      r3,r30
    bl      ext_02183d80
    stw     r3,100(r30)
    addi    r3,r30,104
    lwz     r4,52(r30)
    li      r5,0
    li      r6,4
    bl      ext_02601af8
    lwz     r8,108(r30)
    li      r5,0
    cmpw    r5,r8
    stw     r5,8(r1)
    bge-    L021824b0
L02182464:
    mr      r3,r30
    addi    r4,r1,8
    bl      ext_02183e0c
    mr      r4,r3
    addi    r3,r30,104
    bl      ext_02183ee4
    lwz     r11,8(r1)
    lwz     r0,56(r30)
    slwi    r10,r11,2
    addi    r3,r30,104
    lwzx    r31,r10,r0
    bl      ext_02183f10
    stw     r3,12(r31)
    lwz     r4,8(r1)
    addi    r4,r4,1
    lwz     r5,108(r30)
    cmpw    r4,r5
    stw     r4,8(r1)
    blt+    L02182464
L021824b0:
    bl      ext_020fec50
    mr      r27,r3
    bl      ext_02183f38
    li      r28,0
    li      r31,8
    stw     r3,116(r30)
    cmpw    r28,r3
    li      r29,0
    bge-    L021824e8
L021824d4:
    mr      r4,r27
    li      r3,0
    mr      r5,r28
    bl      ext_021d635c
    mr      r29,r3
L021824e8:
    mr      r4,r28
    addi    r3,r30,120
    bl      ext_02183ec0
    addic.  r31,r31,-1
    addi    r28,r28,1
    stw     r29,0(r3)
    beq-    L02182518
    lwz     r3,116(r30)
    cmpw    r28,r3
    li      r29,0
    bge+    L021824e8
    b       L021824d4
L02182518:
    lwz     r0,52(r30)
    slwi    r3,r0,2
    bl      ext_02601328
    lwz     r4,52(r30)
    li      r28,0
    cmpw    r28,r4
    stw     r3,60(r30)
    bge-    L02182564
    li      r29,0
L0218253c:
    lwz     r31,60(r30)
    li      r3,0
    mr      r4,r28
    bl      ext_021859f4
    stwx    r3,r31,r29
    lwz     r4,52(r30)
    addi    r28,r28,1
    cmpw    r28,r4
    addi    r29,r29,4
    blt+    L0218253c
L02182564:
    addi    r31,r30,164
    li      r29,6
    li      r5,0
    mr      r3,r31
    bl      ext_0261ebb8
    mr      r3,r31
    li      r4,1
    bl      ext_0261e8c4
    addic.  r29,r29,-1
    addi    r31,r31,108
    beq-    L021825b8
L02182590:
    lwz     r4,52(r30)
    li      r5,0
    mr      r3,r31
    bl      ext_0261ebb8
    mr      r3,r31
    li      r4,1
    bl      ext_0261e8c4
    addic.  r29,r29,-1
    addi    r31,r31,108
    bne+    L02182590
L021825b8:
    lmw     r22,800(r1)
    lwz     r0,844(r1)
    mtlr    r0
    addi    r1,r1,840
    blr
