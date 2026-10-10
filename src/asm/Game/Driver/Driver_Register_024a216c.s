# Converted from the disassembly of 0x024a216c (2112 bytes). Name is a placeholder.
    .text
    .globl Driver_Register_024a216c
Driver_Register_024a216c:
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    lis     r30,4117
    mr      r31,r3
    stw     r0,20(r1)
    lwzu    r3,9820(r30)
    bl      ext_0261c858
    lwz     r7,12(r3)
    lwz     r8,52(r7)
    mtctr   r8
    li      r5,4
    li      r4,124
    bctrl
    cmpwi   r3,0
    beq-    L024a21b8
    stw     r3,64(r31)
    li      r10,31
    stw     r10,60(r31)
L024a21b8:
    lwz     r3,0(r30)
    bl      ext_0261c858
    lwz     r12,12(r3)
    lwz     r0,52(r12)
    mtctr   r0
    li      r4,124
    li      r5,4
    bctrl
    cmpwi   r3,0
    beq-    L024a21ec
    stw     r3,72(r31)
    li      r4,31
    stw     r4,68(r31)
L024a21ec:
    lis     r0,4106
    li      r10,31
    li      r11,0
    addic   r0,r0,27636
    mtctr   r10
    mr      r8,r11
L024a2204:
    lwz     r5,60(r31)
    cmplw   r11,r5
    lwz     r12,64(r31)
    bge-    L024a2218
    add     r12,r12,r8
L024a2218:
    stw     r0,0(r12)
    addi    r8,r8,4
    addi    r11,r11,1
    bdnz+   L024a2204
    li      r8,31
    li      r4,0
    li      r6,-1
    mtctr   r8
    mr      r5,r4
L024a223c:
    lwz     r7,68(r31)
    cmplw   r4,r7
    lwz     r11,72(r31)
    bge-    L024a2250
    add     r11,r11,r5
L024a2250:
    stw     r6,0(r11)
    addi    r5,r5,4
    addi    r4,r4,1
    bdnz+   L024a223c
    lwz     r9,60(r31)
    cmpwi   r9,0
    lwz     r9,64(r31)
    lis     r10,4106
    addi    r10,r10,27640
    stw     r10,0(r9)
    lwz     r0,68(r31)
    cmpwi   r0,0
    lwz     r11,72(r31)
    li      r4,-1
    stw     r4,0(r11)
    lwz     r5,60(r31)
    cmplwi  r5,1
    lwz     r12,64(r31)
    ble-    L024a22a0
    addi    r12,r12,4
L024a22a0:
    lis     r7,4106
    addi    r7,r7,27548
    stw     r7,0(r12)
    lwz     r8,68(r31)
    cmplwi  r8,1
    lwz     r4,72(r31)
    ble-    L024a22c0
    addi    r4,r4,4
L024a22c0:
    li      r10,1001
    stw     r10,0(r4)
    lwz     r0,60(r31)
    cmplwi  r0,2
    lwz     r5,64(r31)
    ble-    L024a22dc
    addi    r5,r5,8
L024a22dc:
    lis     r4,4106
    addi    r4,r4,27556
    stw     r4,0(r5)
    lwz     r5,68(r31)
    cmplwi  r5,2
    lwz     r6,72(r31)
    ble-    L024a22fc
    addi    r6,r6,8
L024a22fc:
    li      r7,1002
    stw     r7,0(r6)
    lwz     r8,60(r31)
    cmplwi  r8,3
    lwz     r9,64(r31)
    ble-    L024a2318
    addi    r9,r9,12
L024a2318:
    lis     r10,4106
    addi    r10,r10,27564
    stw     r10,0(r9)
    lwz     r0,68(r31)
    cmplwi  r0,3
    lwz     r11,72(r31)
    ble-    L024a2338
    addi    r11,r11,12
L024a2338:
    li      r4,1003
    stw     r4,0(r11)
    lwz     r5,60(r31)
    cmplwi  r5,4
    lwz     r6,64(r31)
    ble-    L024a2354
    addi    r6,r6,16
L024a2354:
    lis     r7,4106
    addi    r7,r7,27572
    stw     r7,0(r6)
    lwz     r8,68(r31)
    cmplwi  r8,4
    lwz     r8,72(r31)
    ble-    L024a2374
    addi    r8,r8,16
L024a2374:
    li      r10,1013
    stw     r10,0(r8)
    lwz     r0,60(r31)
    cmplwi  r0,5
    lwz     r12,64(r31)
    ble-    L024a2390
    addi    r12,r12,20
L024a2390:
    lis     r4,4106
    addi    r4,r4,27580
    stw     r4,0(r12)
    lwz     r5,68(r31)
    cmplwi  r5,5
    lwz     r6,72(r31)
    ble-    L024a23b0
    addi    r6,r6,20
L024a23b0:
    li      r7,1004
    stw     r7,0(r6)
    lwz     r8,60(r31)
    cmplwi  r8,6
    lwz     r9,64(r31)
    ble-    L024a23cc
    addi    r9,r9,24
L024a23cc:
    lis     r10,4106
    addi    r10,r10,27484
    stw     r10,0(r9)
    lwz     r0,68(r31)
    cmplwi  r0,6
    lwz     r12,72(r31)
    ble-    L024a23ec
    addi    r12,r12,24
L024a23ec:
    li      r4,1007
    stw     r4,0(r12)
    lwz     r5,60(r31)
    cmplwi  r5,7
    lwz     r6,64(r31)
    ble-    L024a2408
    addi    r6,r6,28
L024a2408:
    lis     r7,4106
    addi    r7,r7,27696
    stw     r7,0(r6)
    lwz     r8,68(r31)
    cmplwi  r8,7
    lwz     r9,72(r31)
    ble-    L024a2428
    addi    r9,r9,28
L024a2428:
    li      r10,1021
    stw     r10,0(r9)
    lwz     r0,60(r31)
    cmplwi  r0,8
    lwz     r12,64(r31)
    ble-    L024a2444
    addi    r12,r12,32
L024a2444:
    lis     r4,4106
    addi    r4,r4,27708
    stw     r4,0(r12)
    lwz     r5,68(r31)
    cmplwi  r5,8
    lwz     r6,72(r31)
    ble-    L024a2464
    addi    r6,r6,32
L024a2464:
    li      r7,1008
    stw     r7,0(r6)
    lwz     r8,60(r31)
    cmplwi  r8,9
    lwz     r9,64(r31)
    ble-    L024a2480
    addi    r9,r9,36
L024a2480:
    lis     r10,4106
    addi    r10,r10,27588
    stw     r10,0(r9)
    lwz     r11,68(r31)
    cmplwi  r11,9
    lwz     r12,72(r31)
    ble-    L024a24a0
    addi    r12,r12,36
L024a24a0:
    li      r0,1005
    stw     r0,0(r12)
    lwz     r4,60(r31)
    cmplwi  r4,10
    lwz     r6,64(r31)
    ble-    L024a24bc
    addi    r6,r6,40
L024a24bc:
    lis     r7,4106
    addi    r7,r7,27648
    stw     r7,0(r6)
    lwz     r8,68(r31)
    cmplwi  r8,10
    lwz     r9,72(r31)
    ble-    L024a24dc
    addi    r9,r9,40
L024a24dc:
    li      r10,1006
    stw     r10,0(r9)
    lwz     r0,60(r31)
    cmplwi  r0,11
    lwz     r12,64(r31)
    ble-    L024a24f8
    addi    r12,r12,44
L024a24f8:
    lis     r4,4106
    addi    r4,r4,27596
    stw     r4,0(r12)
    lwz     r5,68(r31)
    cmplwi  r5,11
    lwz     r6,72(r31)
    ble-    L024a2518
    addi    r6,r6,44
L024a2518:
    li      r7,1014
    stw     r7,0(r6)
    lwz     r8,60(r31)
    cmplwi  r8,12
    lwz     r9,64(r31)
    ble-    L024a2534
    addi    r9,r9,48
L024a2534:
    lis     r10,4106
    addi    r10,r10,27492
    stw     r10,0(r9)
    lwz     r0,68(r31)
    cmplwi  r0,12
    lwz     r12,72(r31)
    ble-    L024a2554
    addi    r12,r12,48
L024a2554:
    li      r4,1015
    stw     r4,0(r12)
    lwz     r5,60(r31)
    cmplwi  r5,13
    lwz     r6,64(r31)
    ble-    L024a2570
    addi    r6,r6,52
L024a2570:
    lis     r7,4106
    addi    r7,r7,27500
    stw     r7,0(r6)
    lwz     r8,68(r31)
    cmplwi  r8,13
    lwz     r9,72(r31)
    ble-    L024a2590
    addi    r9,r9,52
L024a2590:
    li      r10,1016
    stw     r10,0(r9)
    lwz     r11,60(r31)
    cmplwi  r11,14
    lwz     r12,64(r31)
    ble-    L024a25ac
    addi    r12,r12,56
L024a25ac:
    lis     r0,4106
    addic   r0,r0,27720
    stw     r0,0(r12)
    lwz     r4,68(r31)
    cmplwi  r4,14
    lwz     r5,72(r31)
    ble-    L024a25cc
    addi    r5,r5,56
L024a25cc:
    li      r6,1019
    stw     r6,0(r5)
    lwz     r7,60(r31)
    cmplwi  r7,15
    lwz     r9,64(r31)
    ble-    L024a25e8
    addi    r9,r9,60
L024a25e8:
    lis     r10,4106
    addi    r10,r10,27732
    stw     r10,0(r9)
    lwz     r0,68(r31)
    cmplwi  r0,15
    lwz     r12,72(r31)
    ble-    L024a2608
    addi    r12,r12,60
L024a2608:
    li      r4,1022
    stw     r4,0(r12)
    lwz     r5,60(r31)
    cmplwi  r5,16
    lwz     r6,64(r31)
    ble-    L024a2624
    addi    r6,r6,64
L024a2624:
    lis     r7,4106
    addi    r7,r7,27652
    stw     r7,0(r6)
    lwz     r8,68(r31)
    cmplwi  r8,16
    lwz     r9,72(r31)
    ble-    L024a2644
    addi    r9,r9,64
L024a2644:
    li      r10,1018
    stw     r10,0(r9)
    lwz     r0,60(r31)
    cmplwi  r0,17
    lwz     r12,64(r31)
    ble-    L024a2660
    addi    r12,r12,68
L024a2660:
    lis     r4,4106
    addi    r4,r4,27604
    stw     r4,0(r12)
    lwz     r5,68(r31)
    cmplwi  r5,17
    lwz     r6,72(r31)
    ble-    L024a2680
    addi    r6,r6,68
L024a2680:
    li      r7,1017
    stw     r7,0(r6)
    lwz     r8,60(r31)
    cmplwi  r8,18
    lwz     r9,64(r31)
    ble-    L024a269c
    addi    r9,r9,72
L024a269c:
    lis     r10,4106
    addi    r10,r10,27508
    stw     r10,0(r9)
    lwz     r11,68(r31)
    cmplwi  r11,18
    lwz     r12,72(r31)
    ble-    L024a26bc
    addi    r12,r12,72
L024a26bc:
    li      r0,1009
    stw     r0,0(r12)
    lwz     r4,60(r31)
    cmplwi  r4,19
    lwz     r5,64(r31)
    ble-    L024a26d8
    addi    r5,r5,76
L024a26d8:
    lis     r6,4106
    addi    r6,r6,27516
    stw     r6,0(r5)
    lwz     r7,68(r31)
    cmplwi  r7,19
    lwz     r8,72(r31)
    ble-    L024a26f8
    addi    r8,r8,76
L024a26f8:
    li      r9,1010
    stw     r9,0(r8)
    lwz     r0,60(r31)
    cmplwi  r0,20
    lwz     r12,64(r31)
    ble-    L024a2714
    addi    r12,r12,80
L024a2714:
    lis     r4,4106
    addi    r4,r4,27524
    stw     r4,0(r12)
    lwz     r5,68(r31)
    cmplwi  r5,20
    lwz     r6,72(r31)
    ble-    L024a2734
    addi    r6,r6,80
L024a2734:
    li      r7,1011
    stw     r7,0(r6)
    lwz     r8,60(r31)
    cmplwi  r8,21
    lwz     r9,64(r31)
    ble-    L024a2750
    addi    r9,r9,84
L024a2750:
    lis     r10,4106
    addi    r10,r10,27532
    stw     r10,0(r9)
    lwz     r0,68(r31)
    cmplwi  r0,21
    lwz     r12,72(r31)
    ble-    L024a2770
    addi    r12,r12,84
L024a2770:
    li      r4,1012
    stw     r4,0(r12)
    lwz     r5,60(r31)
    cmplwi  r5,22
    lwz     r6,64(r31)
    ble-    L024a278c
    addi    r6,r6,88
L024a278c:
    lis     r7,4106
    addi    r7,r7,27684
    stw     r7,0(r6)
    lwz     r8,68(r31)
    cmplwi  r8,22
    lwz     r9,72(r31)
    ble-    L024a27ac
    addi    r9,r9,88
L024a27ac:
    li      r10,1030
    stw     r10,0(r9)
    lwz     r11,60(r31)
    cmplwi  r11,23
    lwz     r12,64(r31)
    ble-    L024a27c8
    addi    r12,r12,92
L024a27c8:
    lis     r0,4106
    addic   r0,r0,27612
    stw     r0,0(r12)
    lwz     r4,68(r31)
    cmplwi  r4,23
    lwz     r5,72(r31)
    ble-    L024a27e8
    addi    r5,r5,92
L024a27e8:
    li      r6,1023
    stw     r6,0(r5)
    lwz     r7,60(r31)
    cmplwi  r7,24
    lwz     r8,64(r31)
    ble-    L024a2804
    addi    r8,r8,96
L024a2804:
    lis     r9,4106
    addi    r9,r9,27620
    stw     r9,0(r8)
    lwz     r10,68(r31)
    cmplwi  r10,24
    lwz     r11,72(r31)
    ble-    L024a2824
    addi    r11,r11,96
L024a2824:
    li      r12,1028
    stw     r12,0(r11)
    lwz     r0,60(r31)
    cmplwi  r0,25
    lwz     r6,64(r31)
    ble-    L024a2840
    addi    r6,r6,100
L024a2840:
    lis     r5,4106
    addi    r5,r5,27628
    stw     r5,0(r6)
    lwz     r6,68(r31)
    cmplwi  r6,25
    lwz     r9,72(r31)
    ble-    L024a2860
    addi    r9,r9,100
L024a2860:
    li      r8,1025
    stw     r8,0(r9)
    lwz     r9,60(r31)
    cmplwi  r9,26
    lwz     r12,64(r31)
    ble-    L024a287c
    addi    r12,r12,104
L024a287c:
    lis     r11,4106
    addi    r11,r11,27660
    stw     r11,0(r12)
    lwz     r12,68(r31)
    cmplwi  r12,26
    lwz     r6,72(r31)
    ble-    L024a289c
    addi    r6,r6,104
L024a289c:
    li      r0,1029
    stw     r0,0(r6)
    lwz     r4,60(r31)
    cmplwi  r4,27
    lwz     r9,64(r31)
    ble-    L024a28b8
    addi    r9,r9,108
L024a28b8:
    lis     r5,4106
    addi    r5,r5,27668
    stw     r5,0(r9)
    lwz     r6,68(r31)
    cmplwi  r6,27
    lwz     r12,72(r31)
    ble-    L024a28d8
    addi    r12,r12,108
L024a28d8:
    li      r7,1026
    stw     r7,0(r12)
    lwz     r0,60(r31)
    cmplwi  r0,28
    lwz     r5,64(r31)
    ble-    L024a28f4
    addi    r5,r5,112
L024a28f4:
    lis     r12,4106
    addi    r12,r12,27540
    stw     r12,0(r5)
    lwz     r4,68(r31)
    cmplwi  r4,28
    lwz     r8,72(r31)
    ble-    L024a2914
    addi    r8,r8,112
L024a2914:
    li      r7,1027
    stw     r7,0(r8)
    lwz     r9,60(r31)
    cmplwi  r9,29
    lwz     r11,64(r31)
    ble-    L024a2930
    addi    r11,r11,116
L024a2930:
    lis     r0,4106
    addic   r0,r0,27676
    stw     r0,0(r11)
    lwz     r5,68(r31)
    cmplwi  r5,29
    lwz     r4,72(r31)
    ble-    L024a2950
    addi    r4,r4,116
L024a2950:
    li      r6,1024
    stw     r6,0(r4)
    lwz     r7,60(r31)
    cmplwi  r7,30
    lwz     r7,64(r31)
    ble-    L024a296c
    addi    r7,r7,120
L024a296c:
    lis     r8,4106
    addi    r8,r8,27544
    stw     r8,0(r7)
    lwz     r9,68(r31)
    cmplwi  r9,30
    lwz     r10,72(r31)
    ble-    L024a298c
    addi    r10,r10,120
L024a298c:
    li      r0,1020
    stw     r0,0(r10)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
