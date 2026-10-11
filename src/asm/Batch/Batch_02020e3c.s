# Converted from the disassembly of 0x02020e3c (612 bytes). Name is a placeholder.
    .text
    .globl Batch_02020e3c
Batch_02020e3c:
    stwu    r1,-88(r1)
    stfd    f30,56(r1)
    stfd    f31,72(r1)
    stmw    r22,16(r1)
    mr.     r27,r4
    ps_merge10 f30,f30,f30
    mflr    r0
    ps_merge10 f31,f31,f31
    stfs    f30,64(r1)
    mr      r28,r5
    stfs    f31,80(r1)
    stw     r0,92(r1)
    mr      r29,r6
    beq-    L02021078
    lhz     r25,8(r27)
    li      r23,0
    cmpwi   r25,0
    mr      r24,r23
    beq-    L02021078
    lis     r8,4096
    lis     r7,4096
    lfs     f30,10364(r8)
    lfs     f31,10368(r7)
    li      r26,0
L02020e9c:
    clrlwi  r12,r24,16
    mulli   r0,r12,76
    lwz     r5,16(r27)
    add     r3,r5,r0
    lwz     r11,12(r3)
    cmpwi   r11,0
    li      r7,0
    beq-    L02020ec4
    lwz     r6,20(r3)
    lwz     r7,0(r6)
L02020ec4:
    lbz     r0,816(r7)
    cmpwi   r0,0
    li      r0,0
    beq-    L02020ee0
    lhz     r8,8(r3)
    addi    r0,r8,-1
    clrlwi  r0,r0,16
L02020ee0:
    cmplw   r0,r11
    li      r10,0
    bge-    L02020ef8
    lwz     r12,20(r3)
    slwi    r9,r0,2
    lwzx    r10,r9,r12
L02020ef8:
    lha     r4,814(r10)
    cmpwi   r4,9
    bne-    L0202106c
    cmpwi   r11,0
    li      r9,0
    beq-    L02020f18
    lwz     r5,20(r3)
    lwz     r9,0(r5)
L02020f18:
    lbz     r0,816(r9)
    cmpwi   r0,0
    li      r0,0
    beq-    L02020f34
    lhz     r8,8(r3)
    addi    r0,r8,-1
    clrlwi  r0,r0,16
L02020f34:
    cmplw   r0,r11
    li      r31,0
    bge-    L02020f4c
    lwz     r11,20(r3)
    slwi    r9,r0,2
    lwzx    r31,r9,r11
L02020f4c:
    lwz     r4,724(r31)
    cmpwi   r4,0
    li      r30,0
    beq-    L02020f64
    lwz     r5,732(r31)
    lwz     r30,0(r5)
L02020f64:
    cmplwi  r23,10
    lhz     r6,0(r30)
    bge-    L02020fb8
    sthx    r6,r28,r26
    lhz     r7,2(r30)
    add     r12,r28,r26
    sth     r7,2(r12)
    bl      ext_020fd964
    lhz     r10,0(r30)
    lwz     r11,16(r3)
    mulli   r9,r10,88
    lhz     r0,2(r30)
    add     r8,r11,r9
    mulli   r0,r0,768
    lwz     r4,68(r8)
    add     r22,r4,r0
    lwz     r0,56(r22)
    cmpwi   r0,0
    li      r30,0
    beq-    L02021000
    b       L02020ff8
L02020fb8:
    sth     r6,0(r28)
    lhz     r7,2(r30)
    sth     r7,2(r28)
    bl      ext_020fd964
    lhz     r10,0(r30)
    lwz     r11,16(r3)
    mulli   r9,r10,88
    lhz     r0,2(r30)
    add     r8,r11,r9
    mulli   r0,r0,768
    lwz     r4,68(r8)
    add     r22,r4,r0
    lwz     r0,56(r22)
    cmpwi   r0,0
    li      r30,0
    beq-    L02021000
L02020ff8:
    lwz     r6,64(r22)
    lwz     r30,0(r6)
L02021000:
    addi    r4,r1,8
    addi    r5,r31,4
    mr      r3,r22
    bl      ext_0210b04c
    lfs     f11,100(r22)
    lfs     f13,100(r30)
    fcmpu   cr0,f13,f11
    blt-    L02021048
    lfs     f10,8(r1)
    fsubs   f9,f30,f10
    fmuls   f12,f13,f10
    cmplwi  r23,10
    fmadds  f0,f11,f9,f12
    blt-    L02021060
L02021038:
    stfs    f0,0(r29)
    addi    r26,r26,4
    addi    r23,r23,1
    b       L0202106c
L02021048:
    fsubs   f9,f30,f31
    fmuls   f12,f13,f31
    cmplwi  r23,10
    stfs    f31,8(r1)
    fmadds  f0,f11,f9,f12
    bge+    L02021038
L02021060:
    stfsx   f0,r29,r26
    addi    r23,r23,1
    addi    r26,r26,4
L0202106c:
    addic.  r25,r25,-1
    addi    r24,r24,1
    bne+    L02020e9c
L02021078:
    lmw     r22,16(r1)
    lfs     f30,64(r1)
    lfs     f31,80(r1)
    lfd     f30,56(r1)
    lfd     f31,72(r1)
    isync
    lwz     r0,92(r1)
    mtlr    r0
    addi    r1,r1,88
    blr
