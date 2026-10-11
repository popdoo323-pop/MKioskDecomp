# Converted from the disassembly of 0x02024e0c (708 bytes). Name is a placeholder.
    .text
    .globl Batch_02024e0c
Batch_02024e0c:
    stwu    r1,-120(r1)
    stmw    r21,76(r1)
    mflr    r0
    stw     r0,124(r1)
    mr      r29,r3
    mr      r25,r4
    lwz     r4,40(r29)
    addi    r3,r1,8
    li      r30,0
    bl      ext_02024b60
    lwz     r31,12(r25)
    lhz     r8,4(r25)
    mr.     r24,r31
    lbz     r27,20(r25)
    lhz     r6,2(r25)
    mr      r28,r30
    sth     r8,30(r1)
    mr      r23,r28
    mr      r26,r30
    sth     r6,28(r1)
    lwz     r25,28(r1)
    ble-    L02024f30
L02024e64:
    lwz     r10,44(r29)
    lwz     r21,0(r10)
    clrlwi  r5,r25,16
    srwi    r4,r25,16
    mr      r3,r21
    bl      ext_020062f0
    mr      r5,r3
    lbz     r4,816(r5)
    cmpwi   r4,0
    clrlwi  r12,r23,16
    beq-    L02024ed4
    cmplwi  r12,10
    addi    r7,r5,88
    bge-    L02024ea8
    slwi    r6,r12,2
    add     r7,r7,r6
    b       L02024ee8
L02024ea8:
    lhz     r5,2(r7)
    mr      r3,r21
    lhz     r4,0(r7)
    bl      ext_020062f0
    mr      r4,r3
    addi    r3,r1,8
    bl      ext_02024bcc
    lwz     r0,16(r1)
    cmpwi   r0,9
    bne-    L02024f24
    b       L02024f10
L02024ed4:
    cmplwi  r12,10
    addi    r7,r5,48
    bge-    L02024ee8
    slwi    r8,r12,2
    add     r7,r7,r8
L02024ee8:
    lhz     r5,2(r7)
    mr      r3,r21
    lhz     r4,0(r7)
    bl      ext_020062f0
    mr      r4,r3
    addi    r3,r1,8
    bl      ext_02024bcc
    lwz     r0,16(r1)
    cmpwi   r0,9
    bne-    L02024f24
L02024f10:
    mr.     r22,r31
    li      r24,0
    li      r28,1
    ble-    L02025078
    b       L02024f3c
L02024f24:
    addic.  r24,r24,-1
    addi    r23,r23,1
    bne+    L02024e64
L02024f30:
    mr.     r22,r31
    li      r24,0
    ble-    L02025078
L02024f3c:
    addi    r23,r1,28
L02024f40:
    lwz     r11,44(r29)
    lwz     r21,0(r11)
    clrlwi  r5,r25,16
    srwi    r4,r25,16
    mr      r3,r21
    bl      ext_020062f0
    mr      r5,r3
    lbz     r4,816(r5)
    cmpwi   r4,0
    clrlwi  r0,r24,16
    beq-    L02024fb8
    cmplwi  r0,10
    addi    r9,r5,88
    bge-    L02024f84
    slwi    r0,r0,2
    add     r9,r9,r0
    b       L02024fcc
L02024f84:
    lhz     r5,2(r9)
    mr      r3,r21
    lhz     r4,0(r9)
    bl      ext_020062f0
    mr      r4,r3
    addi    r3,r1,8
    bl      ext_02024bcc
    lwz     r4,40(r29)
    addi    r3,r1,8
    bl      ext_02024d98
    cmpwi   r3,0
    beq-    L02025004
    b       L02024ffc
L02024fb8:
    cmplwi  r0,10
    addi    r9,r5,48
    bge-    L02024fcc
    slwi    r0,r0,2
    add     r9,r9,r0
L02024fcc:
    lhz     r5,2(r9)
    mr      r3,r21
    lhz     r4,0(r9)
    bl      ext_020062f0
    mr      r4,r3
    addi    r3,r1,8
    bl      ext_02024bcc
    lwz     r4,40(r29)
    addi    r3,r1,8
    bl      ext_02024d98
    cmpwi   r3,0
    beq-    L02025004
L02024ffc:
    mr      r30,r24
    b       L020250b8
L02025004:
    cmpwi   r27,0
    beq-    L0202503c
    cmpwi   r28,0
    beq-    L0202503c
    lwz     r10,16(r1)
    xori    r11,r10,9
    cntlzw  r0,r11
    srwi    r11,r0,5
    addic.  r22,r22,-1
    add     r26,r26,r11
    addi    r24,r24,1
    stwu    r26,4(r23)
    bne+    L02024f40
    b       L02025078
L0202503c:
    lwz     r0,16(r1)
    cmpwi   r0,9
    beq-    L02025058
    addi    r3,r1,8
    bl      ext_02024dd0
    cmpwi   r3,0
    beq-    L02025060
L02025058:
    li      r11,0
    b       L02025064
L02025060:
    lwz     r11,16(r1)
L02025064:
    add     r26,r26,r11
    addi    r24,r24,1
    addic.  r22,r22,-1
    stwu    r26,4(r23)
    bne+    L02024f40
L02025078:
    lwz     r3,36(r29)
    mr      r4,r26
    bl      ext_02008eb0
    cmpwi   r31,0
    li      r11,0
    addi    r0,r3,1
    ble-    L020250b8
    mtctr   r31
    addi    r12,r1,28
L0202509c:
    lwzu    r10,4(r12)
    cmpw    r0,r10
    bgt-    L020250b0
    mr      r30,r11
    b       L020250b8
L020250b0:
    addi    r11,r11,1
    bdnz+   L0202509c
L020250b8:
    mr      r3,r30
    lmw     r21,76(r1)
    lwz     r0,124(r1)
    mtlr    r0
    addi    r1,r1,120
    blr
