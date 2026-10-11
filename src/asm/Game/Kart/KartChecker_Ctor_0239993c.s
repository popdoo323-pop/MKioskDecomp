# Converted from the disassembly of 0x0239993c (820 bytes). Name is a placeholder.
    .text
    .globl KartChecker_Ctor_0239993c
KartChecker_Ctor_0239993c:
    stwu    r1,-40(r1)
    mflr    r0
    stmw    r24,8(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,44(r1)
    bne-    L02399968
    li      r3,112
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02399bbc
L02399968:
    mr      r3,r31
    bl      ext_02410f5c
    addic.  r29,r31,40
    lis     r6,4105
    stw     r30,36(r31)
    addi    r6,r6,-26048
    mr      r3,r29
    li      r30,0
    stw     r6,0(r31)
    bne-    L023999a0
    li      r3,4
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L023999a4
L023999a0:
    stw     r30,0(r3)
L023999a4:
    li      r7,1
    lis     r8,4105
    stw     r7,44(r31)
    addi    r8,r8,-28524
    addi    r26,r31,44
    stw     r30,48(r31)
    lis     r6,570
    li      r9,9
    stw     r8,60(r31)
    addi    r3,r31,68
    li      r10,59
    sth     r9,52(r31)
    addi    r6,r6,-15692
    li      r4,3
    stb     r10,54(r31)
    li      r11,999
    li      r5,12
    stw     r30,64(r31)
    addi    r27,r31,48
    addi    r28,r31,64
    sth     r11,56(r31)
    bl      ext_0292e4a4
    li      r3,316
    bl      ext_0260128c
    mr.     r25,r3
    beq-    L02399a5c
    mr.     r30,r25
    bne-    L02399a24
    li      r3,316
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L02399a48
L02399a24:
    mr      r3,r30
    bl      ext_023b6d08
    lis     r12,4105
    stw     r29,312(r30)
    addi    r12,r12,-27736
    li      r0,4
    stw     r12,0(r30)
    stw     r0,232(r30)
    stw     r0,228(r30)
L02399a48:
    lis     r12,4105
    li      r0,1
    addi    r12,r12,-27456
    stw     r0,232(r25)
    stw     r12,0(r25)
L02399a5c:
    lis     r5,4105
    stw     r25,108(r31)
    addi    r5,r5,-26880
    lis     r3,4117
    stw     r5,288(r25)
    lwz     r3,-3268(r3)
    lwz     r4,108(r31)
    lwz     r5,36(r31)
    bl      ext_023c20cc
    lis     r30,4105
    li      r3,316
    lis     r29,4105
    addi    r30,r30,-28296
    addi    r29,r29,-28016
    bl      ext_0260128c
    mr.     r24,r3
    beq-    L02399ae0
    mr.     r25,r24
    bne-    L02399ab8
    li      r3,316
    bl      ext_0260128c
    mr.     r25,r3
    beq-    L02399ad4
L02399ab8:
    mr      r3,r25
    bl      ext_023b6d08
    stw     r30,0(r25)
    li      r6,4
    stw     r26,312(r25)
    stw     r6,232(r25)
    stw     r6,228(r25)
L02399ad4:
    stw     r29,0(r24)
    li      r0,1
    stw     r0,232(r24)
L02399ae0:
    lis     r5,4105
    lwz     r3,108(r31)
    mr      r4,r24
    addi    r5,r5,-26896
    bl      ext_023b70d0
    li      r3,316
    bl      ext_0260128c
    mr.     r25,r3
    beq-    L02399b44
    mr.     r26,r25
    bne-    L02399b1c
    li      r3,316
    bl      ext_0260128c
    mr.     r26,r3
    beq-    L02399b38
L02399b1c:
    mr      r3,r26
    bl      ext_023b6d08
    stw     r30,0(r26)
    li      r9,4
    stw     r27,312(r26)
    stw     r9,232(r26)
    stw     r9,228(r26)
L02399b38:
    stw     r29,0(r25)
    li      r11,1
    stw     r11,232(r25)
L02399b44:
    lis     r5,4105
    lwz     r3,108(r31)
    mr      r4,r25
    addi    r5,r5,-26888
    bl      ext_023b70d0
    li      r3,316
    bl      ext_0260128c
    mr.     r26,r3
    beq-    L02399ba8
    mr.     r27,r26
    bne-    L02399b80
    li      r3,316
    bl      ext_0260128c
    mr.     r27,r3
    beq-    L02399b9c
L02399b80:
    mr      r3,r27
    bl      ext_023b6d08
    stw     r30,0(r27)
    li      r12,4
    stw     r28,312(r27)
    stw     r12,232(r27)
    stw     r12,228(r27)
L02399b9c:
    stw     r29,0(r26)
    li      r0,1
    stw     r0,232(r26)
L02399ba8:
    lis     r5,4105
    lwz     r3,108(r31)
    mr      r4,r26
    addi    r5,r5,-26864
    bl      ext_023b70d0
L02399bbc:
    mr      r3,r31
    lmw     r24,8(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
    li      r10,9
    lwz     r9,36(r3)
    li      r11,59
    sth     r10,52(r3)
    li      r8,0
    stb     r11,54(r3)
    addi    r11,r3,56
    stw     r8,48(r3)
    li      r12,3
    stw     r8,64(r3)
    li      r0,999
    stw     r8,40(r3)
    mr      r7,r8
    sth     r0,56(r3)
    mtctr   r12
    stw     r9,44(r3)
L02399c14:
    sthu    r7,12(r11)
    stb     r7,2(r11)
    sth     r7,4(r11)
    bdnz+   L02399c14
    stb     r8,104(r3)
    stb     r8,105(r3)
    blr
    cmpwi   r3,0
    bgt-    L02399c40
    li      r3,0
    blr
L02399c40:
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r10,460(r12)
    lis     r12,4105
    addi    r12,r12,-26856
    slwi    r0,r10,2
    lwzx    r0,r12,r0
    cmpw    r3,r0
    li      r3,2
    bgtlr-
    li      r3,1
    blr
