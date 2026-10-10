# Converted from the disassembly of 0x0249e9fc (5116 bytes). Name is a placeholder.
    .text
    .globl Driver_Register3_0249e9fc
Driver_Register3_0249e9fc:
    stwu    r1,-40(r1)
    lis     r7,4106
    stw     r31,36(r1)
    lis     r8,4106
    addi    r7,r7,26140
    stw     r30,32(r1)
    addi    r8,r8,27260
    li      r30,0
    li      r4,317
    stw     r8,16(r1)
    mr      r8,r30
    li      r5,48
    stw     r7,20(r1)
    lis     r7,25
    addi    r6,r1,16
    stw     r0,44(r1)
    addi    r7,r7,-16384
    mr      r31,r3
    stw     r29,28(r1)
    bl      ext_0249e3dc
    lis     r29,4117
    lwzu    r3,9820(r29)
    bl      ext_0261c858
    lwz     r9,12(r3)
    lwz     r10,52(r9)
    mtctr   r10
    li      r4,120
    li      r5,4
    bctrl
    cmpwi   r3,0
    beq-    L0249ea84
    stw     r3,64(r31)
    li      r11,30
    stw     r11,60(r31)
L0249ea84:
    lwz     r3,0(r29)
    bl      ext_0261c858
    lwz     r12,12(r3)
    lwz     r0,52(r12)
    mtctr   r0
    li      r4,108
    li      r5,4
    bctrl
    cmpwi   r3,0
    beq-    L0249eab8
    stw     r3,72(r31)
    li      r5,27
    stw     r5,68(r31)
L0249eab8:
    lwz     r3,0(r29)
    bl      ext_0261c858
    lwz     r6,12(r3)
    lwz     r7,52(r6)
    mtctr   r7
    li      r4,76
    li      r5,4
    bctrl
    cmpwi   r3,0
    beq-    L0249eaec
    stw     r3,80(r31)
    li      r0,19
    stw     r0,76(r31)
L0249eaec:
    lwz     r3,0(r29)
    bl      ext_0261c858
    lwz     r9,12(r3)
    lwz     r10,52(r9)
    mtctr   r10
    li      r4,52
    li      r5,4
    bctrl
    cmpwi   r3,0
    beq-    L0249eb20
    stw     r3,88(r31)
    li      r11,13
    stw     r11,84(r31)
L0249eb20:
    lwz     r3,0(r29)
    bl      ext_0261c858
    lwz     r12,12(r3)
    lwz     r0,52(r12)
    mtctr   r0
    li      r4,108
    li      r5,4
    bctrl
    cmpwi   r3,0
    beq-    L0249eb54
    stw     r3,96(r31)
    li      r5,27
    stw     r5,92(r31)
L0249eb54:
    lwz     r3,0(r29)
    bl      ext_0261c858
    lwz     r6,12(r3)
    lwz     r7,52(r6)
    mtctr   r7
    li      r4,76
    li      r5,4
    bctrl
    cmpwi   r3,0
    beq-    L0249eb88
    stw     r3,104(r31)
    li      r8,19
    stw     r8,100(r31)
L0249eb88:
    lwz     r3,0(r29)
    bl      ext_0261c858
    lwz     r9,12(r3)
    lwz     r10,52(r9)
    mtctr   r10
    li      r4,52
    li      r5,4
    bctrl
    cmpwi   r3,0
    beq-    L0249ebbc
    stw     r3,112(r31)
    li      r0,13
    stw     r0,108(r31)
L0249ebbc:
    lis     r0,4106
    li      r12,30
    li      r7,0
    addic   r0,r0,27200
    mtctr   r12
    mr      r6,r7
L0249ebd4:
    lwz     r12,60(r31)
    cmplw   r7,r12
    lwz     r12,64(r31)
    bge-    L0249ebe8
    add     r12,r12,r6
L0249ebe8:
    stw     r0,0(r12)
    addi    r6,r6,4
    addi    r7,r7,1
    bdnz+   L0249ebd4
    li      r9,27
    li      r10,0
    mtctr   r9
    mr      r5,r10
L0249ec08:
    lwz     r4,68(r31)
    cmplw   r10,r4
    lwz     r4,72(r31)
    bge-    L0249ec1c
    add     r4,r4,r5
L0249ec1c:
    stw     r0,0(r4)
    addi    r5,r5,4
    addi    r10,r10,1
    bdnz+   L0249ec08
    li      r7,19
    li      r12,0
    mtctr   r7
    mr      r4,r12
L0249ec3c:
    lwz     r5,76(r31)
    cmplw   r12,r5
    lwz     r5,80(r31)
    bge-    L0249ec50
    add     r5,r5,r4
L0249ec50:
    stw     r0,0(r5)
    addi    r4,r4,4
    addi    r12,r12,1
    bdnz+   L0249ec3c
    li      r4,13
    li      r5,0
    mtctr   r4
    mr      r12,r5
L0249ec70:
    lwz     r6,84(r31)
    cmplw   r5,r6
    lwz     r6,88(r31)
    bge-    L0249ec84
    add     r6,r6,r12
L0249ec84:
    stw     r0,0(r6)
    addi    r12,r12,4
    addi    r5,r5,1
    bdnz+   L0249ec70
    li      r12,27
    li      r10,0
    li      r0,-1
    mtctr   r12
    mr      r9,r10
L0249eca8:
    lwz     r8,92(r31)
    cmplw   r10,r8
    lwz     r7,96(r31)
    bge-    L0249ecbc
    add     r7,r7,r9
L0249ecbc:
    stw     r0,0(r7)
    addi    r9,r9,4
    addi    r10,r10,1
    bdnz+   L0249eca8
    li      r10,19
    li      r12,0
    li      r7,-1
    mtctr   r10
    mr      r5,r12
L0249ece0:
    lwz     r9,100(r31)
    cmplw   r12,r9
    lwz     r8,104(r31)
    bge-    L0249ecf4
    add     r8,r8,r5
L0249ecf4:
    stw     r7,0(r8)
    addi    r5,r5,4
    addi    r12,r12,1
    bdnz+   L0249ece0
    li      r9,13
    li      r4,0
    li      r12,-1
    mtctr   r9
    mr      r10,r4
L0249ed18:
    lwz     r0,108(r31)
    cmplw   r4,r0
    lwz     r9,112(r31)
    bge-    L0249ed2c
    add     r9,r9,r10
L0249ed2c:
    stw     r12,0(r9)
    addi    r10,r10,4
    addi    r4,r4,1
    bdnz+   L0249ed18
    lwz     r4,60(r31)
    lwz     r8,64(r31)
    cmpwi   r4,0
    lis     r7,4106
    addi    r7,r7,26660
    stw     r7,0(r8)
    lwz     r9,60(r31)
    cmplwi  r9,1
    lwz     r12,64(r31)
    ble-    L0249ed68
    addi    r12,r12,4
L0249ed68:
    lis     r11,4106
    addi    r11,r11,26664
    stw     r11,0(r12)
    lwz     r0,60(r31)
    cmplwi  r0,2
    lwz     r4,64(r31)
    ble-    L0249ed88
    addi    r4,r4,8
L0249ed88:
    lis     r5,4106
    addi    r5,r5,26668
    stw     r5,0(r4)
    lwz     r6,60(r31)
    cmplwi  r6,3
    lwz     r5,64(r31)
    ble-    L0249eda8
    addi    r5,r5,12
L0249eda8:
    lis     r7,4106
    addi    r7,r7,26672
    stw     r7,0(r5)
    lwz     r9,60(r31)
    cmplwi  r9,4
    lwz     r7,64(r31)
    ble-    L0249edc8
    addi    r7,r7,16
L0249edc8:
    lis     r10,4106
    addi    r10,r10,26676
    stw     r10,0(r7)
    lwz     r11,60(r31)
    cmplwi  r11,5
    lwz     r8,64(r31)
    ble-    L0249ede8
    addi    r8,r8,20
L0249ede8:
    lis     r12,4106
    addi    r12,r12,26680
    stw     r12,0(r8)
    lwz     r0,60(r31)
    cmplwi  r0,6
    lwz     r9,64(r31)
    ble-    L0249ee08
    addi    r9,r9,24
L0249ee08:
    lis     r4,4106
    addi    r4,r4,26684
    stw     r4,0(r9)
    lwz     r5,60(r31)
    cmplwi  r5,7
    lwz     r10,64(r31)
    ble-    L0249ee28
    addi    r10,r10,28
L0249ee28:
    lis     r6,4106
    addi    r6,r6,26688
    stw     r6,0(r10)
    lwz     r7,60(r31)
    cmplwi  r7,8
    lwz     r11,64(r31)
    ble-    L0249ee48
    addi    r11,r11,32
L0249ee48:
    lis     r8,4106
    addi    r8,r8,26692
    stw     r8,0(r11)
    lwz     r9,60(r31)
    cmplwi  r9,9
    lwz     r12,64(r31)
    ble-    L0249ee68
    addi    r12,r12,36
L0249ee68:
    lis     r10,4106
    addi    r10,r10,26696
    stw     r10,0(r12)
    lwz     r11,60(r31)
    cmplwi  r11,10
    lwz     r10,64(r31)
    ble-    L0249ee88
    addi    r10,r10,40
L0249ee88:
    lis     r12,4106
    addi    r12,r12,26700
    stw     r12,0(r10)
    lwz     r0,60(r31)
    cmplwi  r0,11
    lwz     r12,64(r31)
    ble-    L0249eea8
    addi    r12,r12,44
L0249eea8:
    lis     r4,4106
    addi    r4,r4,26704
    stw     r4,0(r12)
    lwz     r5,60(r31)
    cmplwi  r5,12
    lwz     r5,64(r31)
    ble-    L0249eec8
    addi    r5,r5,48
L0249eec8:
    lis     r6,4106
    addi    r6,r6,26708
    stw     r6,0(r5)
    lwz     r7,60(r31)
    cmplwi  r7,13
    lwz     r7,64(r31)
    ble-    L0249eee8
    addi    r7,r7,52
L0249eee8:
    lis     r8,4106
    addi    r8,r8,27204
    stw     r8,0(r7)
    lwz     r9,60(r31)
    cmplwi  r9,14
    lwz     r11,64(r31)
    ble-    L0249ef08
    addi    r11,r11,56
L0249ef08:
    lis     r10,4106
    addi    r10,r10,27212
    stw     r10,0(r11)
    lwz     r12,60(r31)
    cmplwi  r12,15
    lwz     r4,64(r31)
    ble-    L0249ef28
    addi    r4,r4,60
L0249ef28:
    lis     r0,4106
    addic   r0,r0,26712
    stw     r0,0(r4)
    lwz     r4,60(r31)
    cmplwi  r4,16
    lwz     r6,64(r31)
    ble-    L0249ef48
    addi    r6,r6,64
L0249ef48:
    lis     r5,4106
    addi    r5,r5,26716
    stw     r5,0(r6)
    lwz     r6,60(r31)
    cmplwi  r6,17
    lwz     r8,64(r31)
    ble-    L0249ef68
    addi    r8,r8,68
L0249ef68:
    lis     r7,4106
    addi    r7,r7,27220
    stw     r7,0(r8)
    lwz     r9,60(r31)
    cmplwi  r9,18
    lwz     r9,64(r31)
    ble-    L0249ef88
    addi    r9,r9,72
L0249ef88:
    lis     r10,4106
    addi    r10,r10,27228
    stw     r10,0(r9)
    lwz     r11,60(r31)
    cmplwi  r11,19
    lwz     r10,64(r31)
    ble-    L0249efa8
    addi    r10,r10,76
L0249efa8:
    lis     r12,4106
    addi    r12,r12,27236
    stw     r12,0(r10)
    lwz     r0,60(r31)
    cmplwi  r0,20
    lwz     r11,64(r31)
    ble-    L0249efc8
    addi    r11,r11,80
L0249efc8:
    lis     r4,4106
    addi    r4,r4,27244
    stw     r4,0(r11)
    lwz     r5,60(r31)
    cmplwi  r5,21
    lwz     r12,64(r31)
    ble-    L0249efe8
    addi    r12,r12,84
L0249efe8:
    lis     r6,4106
    addi    r6,r6,27252
    stw     r6,0(r12)
    lwz     r7,60(r31)
    cmplwi  r7,22
    lwz     r4,64(r31)
    ble-    L0249f008
    addi    r4,r4,88
L0249f008:
    lis     r8,4106
    addi    r8,r8,26720
    stw     r8,0(r4)
    lwz     r9,60(r31)
    cmplwi  r9,23
    lwz     r5,64(r31)
    ble-    L0249f028
    addi    r5,r5,92
L0249f028:
    lis     r10,4106
    addi    r10,r10,26724
    stw     r10,0(r5)
    lwz     r11,60(r31)
    cmplwi  r11,24
    lwz     r6,64(r31)
    ble-    L0249f048
    addi    r6,r6,96
L0249f048:
    lis     r12,4106
    addi    r12,r12,26728
    stw     r12,0(r6)
    lwz     r0,60(r31)
    cmplwi  r0,25
    lwz     r7,64(r31)
    ble-    L0249f068
    addi    r7,r7,100
L0249f068:
    lis     r4,4106
    addi    r4,r4,26732
    stw     r4,0(r7)
    lwz     r5,60(r31)
    cmplwi  r5,26
    lwz     r8,64(r31)
    ble-    L0249f088
    addi    r8,r8,104
L0249f088:
    lis     r6,4106
    addi    r6,r6,26736
    stw     r6,0(r8)
    lwz     r7,60(r31)
    cmplwi  r7,27
    lwz     r9,64(r31)
    ble-    L0249f0a8
    addi    r9,r9,108
L0249f0a8:
    lis     r8,4106
    addi    r8,r8,26740
    stw     r8,0(r9)
    lwz     r10,60(r31)
    cmplwi  r10,28
    lwz     r10,64(r31)
    ble-    L0249f0c8
    addi    r10,r10,112
L0249f0c8:
    lis     r11,4106
    addi    r11,r11,26744
    stw     r11,0(r10)
    lwz     r12,60(r31)
    cmplwi  r12,29
    lwz     r11,64(r31)
    ble-    L0249f0e8
    addi    r11,r11,116
L0249f0e8:
    lis     r0,4106
    addic   r0,r0,26748
    stw     r0,0(r11)
    lwz     r4,68(r31)
    cmpwi   r4,0
    lwz     r6,72(r31)
    lis     r5,4106
    addi    r5,r5,27276
    stw     r5,0(r6)
    lwz     r7,92(r31)
    cmpwi   r7,0
    lwz     r9,96(r31)
    li      r8,-1
    stw     r8,0(r9)
    lwz     r10,68(r31)
    cmplwi  r10,1
    lwz     r12,72(r31)
    ble-    L0249f134
    addi    r12,r12,4
L0249f134:
    lis     r11,4106
    addi    r11,r11,26752
    stw     r11,0(r12)
    lwz     r0,92(r31)
    cmplwi  r0,1
    lwz     r6,96(r31)
    ble-    L0249f154
    addi    r6,r6,4
L0249f154:
    li      r4,1101
    stw     r4,0(r6)
    lwz     r5,68(r31)
    cmplwi  r5,2
    lwz     r9,72(r31)
    ble-    L0249f170
    addi    r9,r9,8
L0249f170:
    lis     r7,4106
    addi    r7,r7,26760
    stw     r7,0(r9)
    lwz     r8,92(r31)
    cmplwi  r8,2
    lwz     r12,96(r31)
    ble-    L0249f190
    addi    r12,r12,8
L0249f190:
    li      r10,1102
    stw     r10,0(r12)
    lwz     r0,68(r31)
    cmplwi  r0,3
    lwz     r6,72(r31)
    ble-    L0249f1ac
    addi    r6,r6,12
L0249f1ac:
    lis     r4,4106
    addi    r4,r4,26768
    stw     r4,0(r6)
    lwz     r5,92(r31)
    cmplwi  r5,3
    lwz     r9,96(r31)
    ble-    L0249f1cc
    addi    r9,r9,12
L0249f1cc:
    li      r7,1104
    stw     r7,0(r9)
    lwz     r8,68(r31)
    cmplwi  r8,4
    lwz     r12,72(r31)
    ble-    L0249f1e8
    addi    r12,r12,16
L0249f1e8:
    lis     r10,4106
    addi    r10,r10,26776
    stw     r10,0(r12)
    lwz     r0,92(r31)
    cmplwi  r0,4
    lwz     r6,96(r31)
    ble-    L0249f208
    addi    r6,r6,16
L0249f208:
    li      r4,1105
    stw     r4,0(r6)
    lwz     r5,68(r31)
    cmplwi  r5,5
    lwz     r9,72(r31)
    ble-    L0249f224
    addi    r9,r9,20
L0249f224:
    lis     r7,4106
    addi    r7,r7,26784
    stw     r7,0(r9)
    lwz     r8,92(r31)
    cmplwi  r8,5
    lwz     r12,96(r31)
    ble-    L0249f244
    addi    r12,r12,20
L0249f244:
    li      r10,1106
    stw     r10,0(r12)
    lwz     r0,68(r31)
    cmplwi  r0,6
    lwz     r6,72(r31)
    ble-    L0249f260
    addi    r6,r6,24
L0249f260:
    lis     r4,4106
    addi    r4,r4,26792
    stw     r4,0(r6)
    lwz     r5,92(r31)
    cmplwi  r5,6
    lwz     r9,96(r31)
    ble-    L0249f280
    addi    r9,r9,24
L0249f280:
    li      r7,1107
    stw     r7,0(r9)
    lwz     r8,68(r31)
    cmplwi  r8,7
    lwz     r12,72(r31)
    ble-    L0249f29c
    addi    r12,r12,28
L0249f29c:
    lis     r10,4106
    addi    r10,r10,26800
    stw     r10,0(r12)
    lwz     r0,92(r31)
    cmplwi  r0,7
    lwz     r6,96(r31)
    ble-    L0249f2bc
    addi    r6,r6,28
L0249f2bc:
    li      r4,1108
    stw     r4,0(r6)
    lwz     r5,68(r31)
    cmplwi  r5,8
    lwz     r9,72(r31)
    ble-    L0249f2d8
    addi    r9,r9,32
L0249f2d8:
    lis     r7,4106
    addi    r7,r7,26808
    stw     r7,0(r9)
    lwz     r8,92(r31)
    cmplwi  r8,8
    lwz     r12,96(r31)
    ble-    L0249f2f8
    addi    r12,r12,32
L0249f2f8:
    li      r10,1109
    stw     r10,0(r12)
    lwz     r0,68(r31)
    cmplwi  r0,9
    lwz     r6,72(r31)
    ble-    L0249f314
    addi    r6,r6,36
L0249f314:
    lis     r4,4106
    addi    r4,r4,26816
    stw     r4,0(r6)
    lwz     r5,92(r31)
    cmplwi  r5,9
    lwz     r9,96(r31)
    ble-    L0249f334
    addi    r9,r9,36
L0249f334:
    li      r7,1110
    stw     r7,0(r9)
    lwz     r8,68(r31)
    cmplwi  r8,10
    lwz     r12,72(r31)
    ble-    L0249f350
    addi    r12,r12,40
L0249f350:
    lis     r10,4106
    addi    r10,r10,26824
    stw     r10,0(r12)
    lwz     r0,92(r31)
    cmplwi  r0,10
    lwz     r6,96(r31)
    ble-    L0249f370
    addi    r6,r6,40
L0249f370:
    li      r4,1111
    stw     r4,0(r6)
    lwz     r5,68(r31)
    cmplwi  r5,11
    lwz     r9,72(r31)
    ble-    L0249f38c
    addi    r9,r9,44
L0249f38c:
    lis     r7,4106
    addi    r7,r7,26832
    stw     r7,0(r9)
    lwz     r8,92(r31)
    cmplwi  r8,11
    lwz     r12,96(r31)
    ble-    L0249f3ac
    addi    r12,r12,44
L0249f3ac:
    li      r10,1112
    stw     r10,0(r12)
    lwz     r0,68(r31)
    cmplwi  r0,12
    lwz     r6,72(r31)
    ble-    L0249f3c8
    addi    r6,r6,48
L0249f3c8:
    lis     r4,4106
    addi    r4,r4,26840
    stw     r4,0(r6)
    lwz     r5,92(r31)
    cmplwi  r5,12
    lwz     r9,96(r31)
    ble-    L0249f3e8
    addi    r9,r9,48
L0249f3e8:
    li      r7,1113
    stw     r7,0(r9)
    lwz     r8,68(r31)
    cmplwi  r8,13
    lwz     r12,72(r31)
    ble-    L0249f404
    addi    r12,r12,52
L0249f404:
    lis     r10,4106
    addi    r10,r10,26848
    stw     r10,0(r12)
    lwz     r0,92(r31)
    cmplwi  r0,13
    lwz     r6,96(r31)
    ble-    L0249f424
    addi    r6,r6,52
L0249f424:
    li      r4,1115
    stw     r4,0(r6)
    lwz     r5,68(r31)
    cmplwi  r5,14
    lwz     r9,72(r31)
    ble-    L0249f440
    addi    r9,r9,56
L0249f440:
    lis     r7,4106
    addi    r7,r7,26856
    stw     r7,0(r9)
    lwz     r8,92(r31)
    cmplwi  r8,14
    lwz     r12,96(r31)
    ble-    L0249f460
    addi    r12,r12,56
L0249f460:
    li      r10,1114
    stw     r10,0(r12)
    lwz     r0,68(r31)
    cmplwi  r0,15
    lwz     r6,72(r31)
    ble-    L0249f47c
    addi    r6,r6,60
L0249f47c:
    lis     r4,4106
    addi    r4,r4,26864
    stw     r4,0(r6)
    lwz     r5,92(r31)
    cmplwi  r5,15
    lwz     r9,96(r31)
    ble-    L0249f49c
    addi    r9,r9,60
L0249f49c:
    li      r7,1151
    stw     r7,0(r9)
    lwz     r8,68(r31)
    cmplwi  r8,16
    lwz     r12,72(r31)
    ble-    L0249f4b8
    addi    r12,r12,64
L0249f4b8:
    lis     r10,4106
    addi    r10,r10,26872
    stw     r10,0(r12)
    lwz     r0,92(r31)
    cmplwi  r0,16
    lwz     r6,96(r31)
    ble-    L0249f4d8
    addi    r6,r6,64
L0249f4d8:
    li      r4,1153
    stw     r4,0(r6)
    lwz     r5,68(r31)
    cmplwi  r5,17
    lwz     r9,72(r31)
    ble-    L0249f4f4
    addi    r9,r9,68
L0249f4f4:
    lis     r7,4106
    addi    r7,r7,26880
    stw     r7,0(r9)
    lwz     r8,92(r31)
    cmplwi  r8,17
    lwz     r12,96(r31)
    ble-    L0249f514
    addi    r12,r12,68
L0249f514:
    li      r10,1154
    stw     r10,0(r12)
    lwz     r0,68(r31)
    cmplwi  r0,18
    lwz     r6,72(r31)
    ble-    L0249f530
    addi    r6,r6,72
L0249f530:
    lis     r4,4106
    addi    r4,r4,26888
    stw     r4,0(r6)
    lwz     r5,92(r31)
    cmplwi  r5,18
    lwz     r9,96(r31)
    ble-    L0249f550
    addi    r9,r9,72
L0249f550:
    li      r7,1155
    stw     r7,0(r9)
    lwz     r8,68(r31)
    cmplwi  r8,19
    lwz     r12,72(r31)
    ble-    L0249f56c
    addi    r12,r12,76
L0249f56c:
    lis     r10,4106
    addi    r10,r10,26896
    stw     r10,0(r12)
    lwz     r0,92(r31)
    cmplwi  r0,19
    lwz     r6,96(r31)
    ble-    L0249f58c
    addi    r6,r6,76
L0249f58c:
    li      r4,1156
    stw     r4,0(r6)
    lwz     r5,68(r31)
    cmplwi  r5,20
    lwz     r9,72(r31)
    ble-    L0249f5a8
    addi    r9,r9,80
L0249f5a8:
    lis     r7,4106
    addi    r7,r7,26904
    stw     r7,0(r9)
    lwz     r8,92(r31)
    cmplwi  r8,20
    lwz     r12,96(r31)
    ble-    L0249f5c8
    addi    r12,r12,80
L0249f5c8:
    li      r10,1157
    stw     r10,0(r12)
    lwz     r0,68(r31)
    cmplwi  r0,21
    lwz     r6,72(r31)
    ble-    L0249f5e4
    addi    r6,r6,84
L0249f5e4:
    lis     r4,4106
    addi    r4,r4,26912
    stw     r4,0(r6)
    lwz     r5,92(r31)
    cmplwi  r5,21
    lwz     r9,96(r31)
    ble-    L0249f604
    addi    r9,r9,84
L0249f604:
    li      r7,1158
    stw     r7,0(r9)
    lwz     r8,68(r31)
    cmplwi  r8,22
    lwz     r12,72(r31)
    ble-    L0249f620
    addi    r12,r12,88
L0249f620:
    lis     r10,4106
    addi    r10,r10,26920
    stw     r10,0(r12)
    lwz     r0,92(r31)
    cmplwi  r0,22
    lwz     r6,96(r31)
    ble-    L0249f640
    addi    r6,r6,88
L0249f640:
    li      r4,1159
    stw     r4,0(r6)
    lwz     r5,68(r31)
    cmplwi  r5,23
    lwz     r9,72(r31)
    ble-    L0249f65c
    addi    r9,r9,92
L0249f65c:
    lis     r7,4106
    addi    r7,r7,26928
    stw     r7,0(r9)
    lwz     r8,92(r31)
    cmplwi  r8,23
    lwz     r12,96(r31)
    ble-    L0249f67c
    addi    r12,r12,92
L0249f67c:
    li      r10,1160
    stw     r10,0(r12)
    lwz     r0,68(r31)
    cmplwi  r0,24
    lwz     r5,72(r31)
    ble-    L0249f698
    addi    r5,r5,96
L0249f698:
    lis     r4,4106
    addi    r4,r4,26936
    stw     r4,0(r5)
    lwz     r5,92(r31)
    cmplwi  r5,24
    lwz     r8,96(r31)
    ble-    L0249f6b8
    addi    r8,r8,96
L0249f6b8:
    li      r7,1181
    stw     r7,0(r8)
    lwz     r8,68(r31)
    cmplwi  r8,25
    lwz     r12,72(r31)
    ble-    L0249f6d4
    addi    r12,r12,100
L0249f6d4:
    lis     r10,4106
    addi    r10,r10,26944
    stw     r10,0(r12)
    lwz     r11,92(r31)
    cmplwi  r11,25
    lwz     r6,96(r31)
    ble-    L0249f6f4
    addi    r6,r6,100
L0249f6f4:
    li      r0,1182
    stw     r0,0(r6)
    lwz     r4,68(r31)
    cmplwi  r4,26
    lwz     r10,72(r31)
    ble-    L0249f710
    addi    r10,r10,104
L0249f710:
    lis     r6,4106
    addi    r6,r6,26952
    stw     r6,0(r10)
    lwz     r7,92(r31)
    cmplwi  r7,26
    lwz     r12,96(r31)
    ble-    L0249f730
    addi    r12,r12,104
L0249f730:
    li      r9,1183
    stw     r9,0(r12)
    lwz     r0,76(r31)
    li      r10,-1
    lwz     r7,80(r31)
    cmpwi   r0,0
    stw     r10,8(r1)
    lis     r4,4106
    addi    r4,r4,27288
    stw     r4,0(r7)
    lwz     r5,8(r1)
    addi    r8,r5,1
    lwz     r7,100(r31)
    cmplw   r8,r7
    lwz     r10,104(r31)
    bge-    L0249f778
    slwi    r8,r8,2
    add     r10,r10,r8
L0249f778:
    li      r9,-1
    stw     r9,0(r10)
    lwz     r11,76(r31)
    stw     r30,8(r1)
    cmplwi  r11,1
    lwz     r4,80(r31)
    ble-    L0249f798
    addi    r4,r4,4
L0249f798:
    lis     r0,4106
    addic   r0,r0,26960
    stw     r0,0(r4)
    lwz     r4,8(r1)
    addi    r6,r4,1
    lwz     r5,100(r31)
    cmplw   r6,r5
    lwz     r8,104(r31)
    bge-    L0249f7c4
    slwi    r6,r6,2
    add     r8,r8,r6
L0249f7c4:
    li      r9,1201
    li      r11,1
    stw     r9,0(r8)
    lwz     r12,76(r31)
    stw     r11,8(r1)
    cmplwi  r12,2
    lwz     r12,80(r31)
    ble-    L0249f7e8
    addi    r12,r12,8
L0249f7e8:
    lis     r0,4106
    addic   r0,r0,26968
    stw     r0,0(r12)
    lwz     r5,8(r1)
    addi    r5,r5,1
    lwz     r7,100(r31)
    cmplw   r5,r7
    lwz     r6,104(r31)
    bge-    L0249f814
    slwi    r9,r5,2
    add     r6,r6,r9
L0249f814:
    li      r10,1202
    li      r0,2
    stw     r10,0(r6)
    lwz     r4,76(r31)
    stw     r0,8(r1)
    cmplwi  r4,3
    lwz     r11,80(r31)
    ble-    L0249f838
    addi    r11,r11,12
L0249f838:
    lis     r7,4106
    addi    r7,r7,26976
    stw     r7,0(r11)
    lwz     r8,8(r1)
    addi    r12,r8,1
    lwz     r9,100(r31)
    cmplw   r12,r9
    lwz     r4,104(r31)
    bge-    L0249f864
    slwi    r10,r12,2
    add     r4,r4,r10
L0249f864:
    li      r0,1203
    li      r5,3
    stw     r0,0(r4)
    lwz     r6,76(r31)
    stw     r5,8(r1)
    cmplwi  r6,4
    lwz     r8,80(r31)
    ble-    L0249f888
    addi    r8,r8,16
L0249f888:
    lis     r7,4106
    addi    r7,r7,26984
    stw     r7,0(r8)
    lwz     r9,8(r1)
    addi    r10,r9,1
    lwz     r11,100(r31)
    cmplw   r10,r11
    lwz     r12,104(r31)
    bge-    L0249f8b4
    slwi    r0,r10,2
    add     r12,r12,r0
L0249f8b4:
    li      r4,1204
    li      r5,4
    stw     r4,0(r12)
    lwz     r7,76(r31)
    stw     r5,8(r1)
    cmplwi  r7,5
    lwz     r6,80(r31)
    ble-    L0249f8d8
    addi    r6,r6,20
L0249f8d8:
    lis     r0,4106
    addic   r0,r0,26992
    stw     r0,0(r6)
    lwz     r11,8(r1)
    addi    r8,r11,1
    lwz     r7,100(r31)
    cmplw   r8,r7
    lwz     r9,104(r31)
    bge-    L0249f904
    slwi    r8,r8,2
    add     r9,r9,r8
L0249f904:
    li      r0,1205
    li      r5,5
    stw     r0,0(r9)
    lwz     r6,76(r31)
    stw     r5,8(r1)
    cmplwi  r6,6
    lwz     r9,80(r31)
    ble-    L0249f928
    addi    r9,r9,24
L0249f928:
    lis     r7,4106
    addi    r7,r7,27000
    stw     r7,0(r9)
    lwz     r9,8(r1)
    addi    r10,r9,1
    lwz     r11,100(r31)
    cmplw   r10,r11
    lwz     r12,104(r31)
    bge-    L0249f954
    slwi    r0,r10,2
    add     r12,r12,r0
L0249f954:
    li      r4,1206
    li      r5,6
    stw     r4,0(r12)
    lwz     r7,76(r31)
    stw     r5,8(r1)
    cmplwi  r7,7
    lwz     r8,80(r31)
    ble-    L0249f978
    addi    r8,r8,28
L0249f978:
    lis     r0,4106
    addic   r0,r0,27008
    stw     r0,0(r8)
    lwz     r4,8(r1)
    addi    r10,r4,1
    lwz     r5,100(r31)
    cmplw   r10,r5
    lwz     r12,104(r31)
    bge-    L0249f9a4
    slwi    r6,r10,2
    add     r12,r12,r6
L0249f9a4:
    li      r11,1207
    li      r0,7
    stw     r11,0(r12)
    lwz     r4,76(r31)
    stw     r0,8(r1)
    cmplwi  r4,8
    lwz     r6,80(r31)
    ble-    L0249f9c8
    addi    r6,r6,32
L0249f9c8:
    lis     r5,4106
    addi    r5,r5,27016
    stw     r5,0(r6)
    lwz     r7,8(r1)
    addi    r8,r7,1
    lwz     r9,100(r31)
    cmplw   r8,r9
    lwz     r10,104(r31)
    bge-    L0249f9f4
    slwi    r11,r8,2
    add     r10,r10,r11
L0249f9f4:
    li      r12,1208
    li      r0,8
    stw     r12,0(r10)
    lwz     r5,76(r31)
    stw     r0,8(r1)
    cmplwi  r5,9
    lwz     r7,80(r31)
    ble-    L0249fa18
    addi    r7,r7,36
L0249fa18:
    lis     r8,4106
    addi    r8,r8,27024
    stw     r8,0(r7)
    lwz     r9,8(r1)
    addi    r9,r9,1
    lwz     r10,100(r31)
    cmplw   r9,r10
    lwz     r12,104(r31)
    bge-    L0249fa44
    slwi    r11,r9,2
    add     r12,r12,r11
L0249fa44:
    li      r4,1209
    li      r7,9
    stw     r4,0(r12)
    lwz     r8,76(r31)
    stw     r7,8(r1)
    cmplwi  r8,10
    lwz     r6,80(r31)
    ble-    L0249fa68
    addi    r6,r6,40
L0249fa68:
    lis     r9,4106
    addi    r9,r9,27032
    stw     r9,0(r6)
    lwz     r10,8(r1)
    addi    r8,r10,1
    lwz     r11,100(r31)
    cmplw   r8,r11
    lwz     r10,104(r31)
    bge-    L0249fa94
    slwi    r12,r8,2
    add     r10,r10,r12
L0249fa94:
    li      r0,1210
    li      r4,10
    stw     r0,0(r10)
    lwz     r5,76(r31)
    stw     r4,8(r1)
    cmplwi  r5,11
    lwz     r4,80(r31)
    ble-    L0249fab8
    addi    r4,r4,44
L0249fab8:
    lis     r6,4106
    addi    r6,r6,27040
    stw     r6,0(r4)
    lwz     r7,8(r1)
    addi    r6,r7,1
    lwz     r8,100(r31)
    cmplw   r6,r8
    lwz     r7,104(r31)
    bge-    L0249fae4
    slwi    r9,r6,2
    add     r7,r7,r9
L0249fae4:
    li      r10,1211
    li      r11,11
    stw     r10,0(r7)
    lwz     r12,76(r31)
    stw     r11,8(r1)
    cmplwi  r12,12
    lwz     r12,80(r31)
    ble-    L0249fb08
    addi    r12,r12,48
L0249fb08:
    lis     r0,4106
    addic   r0,r0,27048
    stw     r0,0(r12)
    lwz     r4,8(r1)
    addi    r0,r4,1
    lwz     r5,100(r31)
    cmplw   r0,r5
    lwz     r5,104(r31)
    bge-    L0249fb34
    slwi    r6,r0,2
    add     r5,r5,r6
L0249fb34:
    li      r7,1212
    mr      r3,r31
    li      r8,12
    stw     r7,0(r5)
    lis     r5,4106
    addi    r4,r1,8
    li      r6,1213
    addi    r5,r5,27056
    stw     r8,8(r1)
    bl      ext_024a7d24
    li      r11,13
    mr      r3,r31
    lis     r5,4106
    li      r6,1214
    addi    r4,r1,8
    addi    r5,r5,27064
    stw     r11,8(r1)
    bl      ext_024a7d24
    mr      r3,r31
    li      r0,14
    lis     r5,4106
    li      r6,1215
    addi    r4,r1,8
    addi    r5,r5,27072
    stw     r0,8(r1)
    bl      ext_024a7d24
    lis     r5,4106
    mr      r3,r31
    li      r6,15
    addi    r5,r5,27080
    addi    r4,r1,8
    stw     r6,8(r1)
    li      r6,1216
    bl      ext_024a7d24
    li      r8,16
    mr      r3,r31
    lis     r5,4106
    addi    r4,r1,8
    li      r6,1217
    addi    r5,r5,27088
    stw     r8,8(r1)
    bl      ext_024a7d24
    li      r0,17
    lis     r5,4106
    mr      r3,r31
    addi    r4,r1,8
    addi    r5,r5,27096
    li      r6,1218
    stw     r0,8(r1)
    bl      ext_024a7d24
    addi    r4,r1,12
    lis     r5,4106
    li      r6,-1
    mr      r3,r31
    addi    r5,r5,27300
    stw     r6,12(r1)
    bl      ext_024a7d70
    mr      r3,r31
    lis     r5,4106
    li      r6,1251
    addi    r4,r1,12
    addi    r5,r5,27104
    stw     r30,12(r1)
    bl      ext_024a7d70
    mr      r3,r31
    li      r7,1
    lis     r5,4106
    li      r6,1252
    addi    r4,r1,12
    addi    r5,r5,27112
    stw     r7,12(r1)
    bl      ext_024a7d70
    mr      r3,r31
    li      r9,2
    lis     r5,4106
    li      r6,1253
    addi    r4,r1,12
    addi    r5,r5,27120
    stw     r9,12(r1)
    bl      ext_024a7d70
    li      r11,3
    mr      r3,r31
    lis     r5,4106
    addi    r4,r1,12
    li      r6,1254
    addi    r5,r5,27128
    stw     r11,12(r1)
    bl      ext_024a7d70
    mr      r3,r31
    li      r0,4
    lis     r5,4106
    li      r6,1255
    addi    r4,r1,12
    addi    r5,r5,27136
    stw     r0,12(r1)
    bl      ext_024a7d70
    mr      r3,r31
    li      r7,5
    lis     r5,4106
    li      r6,1257
    addi    r4,r1,12
    addi    r5,r5,27144
    stw     r7,12(r1)
    bl      ext_024a7d70
    li      r9,6
    mr      r3,r31
    lis     r5,4106
    addi    r4,r1,12
    li      r6,1258
    addi    r5,r5,27152
    stw     r9,12(r1)
    bl      ext_024a7d70
    mr      r3,r31
    lis     r5,4106
    li      r6,1259
    li      r11,7
    addi    r5,r5,27160
    addi    r4,r1,12
    stw     r11,12(r1)
    bl      ext_024a7d70
    mr      r3,r31
    li      r0,8
    lis     r5,4106
    li      r6,1260
    addi    r4,r1,12
    addi    r5,r5,27168
    stw     r0,12(r1)
    bl      ext_024a7d70
    lis     r5,4106
    addi    r4,r1,12
    li      r6,9
    addi    r5,r5,27176
    mr      r3,r31
    stw     r6,12(r1)
    li      r6,1256
    bl      ext_024a7d70
    mr      r3,r31
    lis     r5,4106
    li      r6,1262
    li      r8,10
    addi    r5,r5,27184
    addi    r4,r1,12
    stw     r8,12(r1)
    bl      ext_024a7d70
    li      r10,11
    lis     r5,4106
    mr      r3,r31
    li      r6,1261
    addi    r5,r5,27192
    stw     r10,12(r1)
    addi    r4,r1,12
    bl      ext_024a7d70
    lwz     r29,28(r1)
    lwz     r0,44(r1)
    lwz     r31,36(r1)
    mtlr    r0
    lwz     r30,32(r1)
    addi    r1,r1,40
    blr
    lwz     r0,0(r5)
    cmpwi   r0,4
    bne-    L0249fdc8
    add     r12,r4,r6
    addi    r3,r12,30
    blr
L0249fdc8:
    cmpwi   r0,16
    bne-    L0249fddc
    add     r12,r4,r6
    addi    r3,r12,38
    blr
L0249fddc:
    cmpwi   r0,29
    bne-    L0249fdf0
    add     r11,r4,r6
    addi    r3,r11,46
    blr
L0249fdf0:
    add     r3,r4,r0
    blr
