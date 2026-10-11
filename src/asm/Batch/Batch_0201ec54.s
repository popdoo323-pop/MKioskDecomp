# Converted from the disassembly of 0x0201ec54 (672 bytes). Name is a placeholder.
    .text
    .globl Batch_0201ec54
Batch_0201ec54:
    stwu    r1,-120(r1)
    stmw    r24,72(r1)
    mflr    r0
    stfd    f31,104(r1)
    ps_merge10 f31,f31,f31
    stw     r0,124(r1)
    mr      r30,r3
    stfs    f31,112(r1)
    bl      ext_0201e5d4
    stw     r3,64(r1)
    lhz     r0,64(r1)
    sth     r0,68(r1)
    lhz     r4,66(r1)
    sth     r4,70(r1)
    lwz     r3,52(r30)
    lwz     r29,68(r1)
    bl      ext_02015194
    clrlwi  r5,r29,16
    srwi    r4,r29,16
    mr      r24,r3
    bl      ext_020062f0
    mr      r25,r3
    li      r10,0
    addi    r3,r1,8
    stw     r10,8(r1)
    li      r4,10
    stw     r10,12(r1)
    addi    r5,r1,20
    stw     r10,16(r1)
    bl      ext_02601ad4
    lbz     r31,816(r25)
    cmpwi   r31,0
    beq-    L0201ece8
    lwz     r12,44(r25)
    cmpwi   r12,2
    blt-    L0201eec4
    b       L0201ecf4
L0201ece8:
    lwz     r12,40(r25)
    cmpwi   r12,2
    blt-    L0201eec4
L0201ecf4:
    li      r26,0
    lwz     r28,8(r1)
    mr      r27,r26
    b       L0201edf8
L0201ed04:
    cmpwi   r31,0
    beq-    L0201ed40
    cmplwi  r26,10
    addi    r5,r25,88
    bge-    L0201ed20
    add     r5,r5,r27
    b       L0201ed50
L0201ed20:
    lhz     r0,0(r5)
    mulli   r6,r0,76
    lwz     r8,16(r24)
    add     r4,r8,r6
    lwz     r0,24(r4)
    cmpwi   r0,2
    bne-    L0201ed6c
    b       L0201edf0
L0201ed40:
    cmplwi  r26,10
    addi    r5,r25,48
    bge-    L0201ed50
    add     r5,r5,r27
L0201ed50:
    lhz     r0,0(r5)
    mulli   r6,r0,76
    lwz     r8,16(r24)
    add     r4,r8,r6
    lwz     r0,24(r4)
    cmpwi   r0,2
    beq-    L0201edf0
L0201ed6c:
    cmpwi   r31,0
    beq-    L0201eda8
    cmplwi  r26,10
    addi    r12,r25,88
    bge-    L0201ed88
    add     r12,r12,r27
    b       L0201edb8
L0201ed88:
    lhz     r5,2(r12)
    mr      r3,r24
    lhz     r4,0(r12)
    bl      ext_020062f0
    lwz     r0,12(r1)
    cmpw    r28,r0
    bge-    L0201edf0
    b       L0201edd4
L0201eda8:
    cmplwi  r26,10
    addi    r12,r25,48
    bge-    L0201edb8
    add     r12,r12,r27
L0201edb8:
    lhz     r5,2(r12)
    mr      r3,r24
    lhz     r4,0(r12)
    bl      ext_020062f0
    lwz     r0,12(r1)
    cmpw    r28,r0
    bge-    L0201edf0
L0201edd4:
    lwz     r4,16(r1)
    slwi    r11,r28,2
    stwx    r3,r11,r4
    lwz     r5,8(r1)
    addi    r28,r5,1
    stw     r28,8(r1)
    lbz     r31,816(r25)
L0201edf0:
    addi    r26,r26,1
    addi    r27,r27,4
L0201edf8:
    cmpwi   r31,0
    beq-    L0201ee10
    lwz     r0,44(r25)
    cmpw    r26,r0
    blt+    L0201ed04
    b       L0201ee1c
L0201ee10:
    lwz     r0,40(r25)
    cmpw    r26,r0
    blt+    L0201ed04
L0201ee1c:
    lis     r9,4096
    li      r31,0
    lfs     f31,9388(r9)
    cmpw    r31,r28
    mr      r26,r29
    bge-    L0201eebc
    li      r27,0
L0201ee38:
    lwz     r10,52(r30)
    lwz     r3,84(r10)
    bl      ext_02185cb4
    lwz     r8,8(r1)
    cmplw   r31,r8
    li      r5,0
    bge-    L0201ee5c
    lwz     r12,16(r1)
    lwzx    r5,r12,r27
L0201ee5c:
    addi    r4,r5,4
    bl      ext_025579b0
    fcmpu   cr0,f1,f31
    lwz     r28,8(r1)
    blt-    L0201ee84
    addi    r31,r31,1
    cmpw    r31,r28
    addi    r27,r27,4
    blt+    L0201ee38
    b       L0201eebc
L0201ee84:
    cmplw   r31,r28
    li      r9,0
    fmr     f31,f1
    bge-    L0201ee9c
    lwz     r6,16(r1)
    lwzx    r9,r6,r27
L0201ee9c:
    lhz     r7,132(r9)
    addi    r31,r31,1
    lhz     r8,134(r9)
    cmpw    r31,r28
    rlwimi  r26,r7,16,0,15
    addi    r27,r27,4
    rlwimi  r26,r8,0,16,31
    blt+    L0201ee38
L0201eebc:
    rlwimi  r29,r26,0,0,15
    rlwimi  r29,r26,0,16,31
L0201eec4:
    stw     r29,60(r1)
    mr      r3,r30
    addi    r4,r1,60
    bl      ext_0201d36c
    lmw     r24,72(r1)
    lfs     f31,112(r1)
    lfd     f31,104(r1)
    isync
    lwz     r0,124(r1)
    mtlr    r0
    addi    r1,r1,120
    blr
