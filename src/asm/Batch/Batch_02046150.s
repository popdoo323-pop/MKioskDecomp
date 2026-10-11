# Converted from the disassembly of 0x02046150 (732 bytes). Name is a placeholder.
    .text
    .globl Batch_02046150
Batch_02046150:
    mflr    r0
    stwu    r1,-112(r1)
    stw     r0,116(r1)
    stmw    r15,44(r1)
    mr.     r21,r3
    beq-    L02046418
    lis     r12,4117
    lwz     r12,-28988(r12)
    cmpwi   r12,0
    beq-    L02046418
    lis     r19,4096
    li      r29,0
    lis     r25,4119
    li      r22,10
    lis     r23,4120
    li      r24,1
    lis     r26,4120
    addi    r25,r25,5884
    lis     r27,4119
    lis     r28,4119
    mr      r18,r29
    addi    r19,r19,23268
L020461a8:
    lwz     r11,3884(r28)
    lwz     r12,3880(r27)
    cmpwi   r11,0
    stw     r19,28(r1)
    mr      r20,r29
    stw     r21,24(r1)
    bne-    L020461cc
    stb     r18,-31113(r23)
    stw     r24,3884(r28)
L020461cc:
    cmpwi   r12,0
    bne-    L020461ec
    lis     r4,4117
    addi    r3,r26,-31112
    li      r5,147
    addi    r4,r4,-28972
    stw     r24,3880(r27)
    bl      ext_029abc88
L020461ec:
    cmplwi  r29,10
    blt-    L02046230
    lwz     r5,28(r1)
    li      r9,0
    stw     r19,20(r1)
    stw     r9,16(r1)
    lwz     r6,20(r5)
    mtctr   r6
    addi    r3,r1,24
    bctrl
    lwz     r9,24(r1)
    lbz     r7,0(r9)
    li      r31,0
    cmpwi   r7,0
    lis     r10,8
    bne-    L0204628c
    b       L020462b0
L02046230:
    lbz     r0,-31113(r23)
    cmpwi   r0,0
    bne-    L02046250
    li      r5,10
    addi    r4,r26,-31112
    mr      r3,r25
    bl      ext_026200ec
    stb     r24,-31113(r23)
L02046250:
    lwz     r5,28(r1)
    slwi    r4,r29,2
    lwzx    r9,r4,r25
    stw     r19,20(r1)
    stw     r9,16(r1)
    lwz     r6,20(r5)
    mtctr   r6
    addi    r3,r1,24
    bctrl
    lwz     r9,24(r1)
    lbz     r7,0(r9)
    li      r31,0
    cmpwi   r7,0
    lis     r10,8
    beq-    L020462b0
L0204628c:
    addi    r31,r31,1
    cmpw    r31,r10
    addi    r9,r9,1
    bgt-    L020462ac
    lbz     r8,0(r9)
    cmpwi   r8,0
    bne+    L0204628c
    b       L020462b0
L020462ac:
    li      r31,0
L020462b0:
    lwz     r10,20(r1)
    lwz     r11,20(r10)
    mtctr   r11
    addi    r3,r1,16
    bctrl
    lwz     r7,16(r1)
    lbz     r12,0(r7)
    li      r30,0
    cmpwi   r12,0
    lis     r8,8
    beq-    L02046300
L020462dc:
    addi    r30,r30,1
    cmpw    r30,r8
    addi    r7,r7,1
    bgt-    L020462fc
    lbz     r0,0(r7)
    cmpwi   r0,0
    bne+    L020462dc
    b       L02046300
L020462fc:
    li      r30,0
L02046300:
    subf.   r31,r30,r31
    li      r16,0
    blt-    L020463d0
L0204630c:
    lwz     r5,24(r1)
    mr      r17,r30
    stw     r19,12(r1)
    add     r4,r5,r16
    addi    r3,r1,8
    stw     r4,8(r1)
    bl      ext_020468b0
    lwz     r6,12(r1)
    lwz     r7,20(r6)
    mtctr   r7
    addi    r3,r1,8
    bctrl
    lwz     r8,20(r1)
    lwz     r0,20(r8)
    mtctr   r0
    lwz     r15,8(r1)
    addi    r3,r1,16
    bctrl
    lwz     r10,16(r1)
    cmplw   r15,r10
    beq-    L020463b0
    cmpwi   r17,0
    ble-    L020463b0
    lwz     r5,16(r1)
    mtctr   r17
    lwz     r6,8(r1)
L02046374:
    lbz     r7,0(r6)
    cmpwi   r7,0
    bne-    L02046390
    lbz     r11,0(r5)
    cmpwi   r11,0
    beq-    L020463b0
    b       L020463c4
L02046390:
    lbz     r8,0(r5)
    cmpwi   r8,0
    beq-    L020463c4
    cmplw   r8,r7
    bne-    L020463c4
    addi    r5,r5,1
    addi    r6,r6,1
    bdnz+   L02046374
L020463b0:
    not     r12,r16
    addic   r0,r12,-1
    subfe.  r10,r0,r12
    beq-    L02046408
    b       L020463e0
L020463c4:
    addi    r16,r16,1
    cmpw    r16,r31
    ble+    L0204630c
L020463d0:
    li      r12,0
    addic   r0,r12,-1
    subfze. r10,r0
    beq-    L02046408
L020463e0:
    stw     r20,32(r1)
    lwz     r4,32(r1)
    addi    r3,r1,36
    stw     r4,36(r1)
    bl      ext_02046104
    lmw     r15,44(r1)
    lwz     r0,116(r1)
    mtlr    r0
    addi    r1,r1,112
    blr
L02046408:
    addic.  r22,r22,-1
    addi    r29,r29,1
    bne+    L020461a8
    stw     r20,32(r1)
L02046418:
    lmw     r15,44(r1)
    lwz     r0,116(r1)
    mtlr    r0
    addi    r1,r1,112
    blr
