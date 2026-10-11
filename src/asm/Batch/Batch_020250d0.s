# Converted from the disassembly of 0x020250d0 (520 bytes). Name is a placeholder.
    .text
    .globl Batch_020250d0
Batch_020250d0:
    stwu    r1,-48(r1)
    stmw    r25,20(r1)
    mflr    r0
    stw     r0,52(r1)
    lhz     r5,2(r4)
    lhz     r0,4(r4)
    mr      r30,r3
    sth     r5,8(r1)
    lwz     r3,40(r30)
    lwz     r29,12(r4)
    li      r31,0
    sth     r0,10(r1)
    lwz     r25,8(r1)
    bl      ext_02015194
    cmpwi   r29,2
    bne-    L020251e0
    li      r26,0
    li      r29,1
    clrlwi  r5,r25,16
    srwi    r4,r25,16
    lwz     r28,16(r3)
    li      r27,2
    bl      ext_020062f0
L0202512c:
    lbz     r12,816(r3)
    cmpwi   r12,0
    clrlwi  r0,r26,16
    beq-    L02025170
    cmplwi  r0,10
    addi    r6,r3,88
    bge-    L02025154
    slwi    r0,r0,2
    add     r6,r6,r0
    b       L02025184
L02025154:
    lhz     r9,0(r6)
    mulli   r0,r9,76
    add     r11,r28,r0
    lwz     r0,24(r11)
    cmpwi   r0,1
    bne-    L020251b8
    b       L0202519c
L02025170:
    cmplwi  r0,10
    addi    r6,r3,48
    bge-    L02025184
    slwi    r0,r0,2
    add     r6,r6,r0
L02025184:
    lhz     r9,0(r6)
    mulli   r0,r9,76
    add     r11,r28,r0
    lwz     r0,24(r11)
    cmpwi   r0,1
    bne-    L020251b8
L0202519c:
    lwz     r3,40(r30)
    bl      ext_02031620
    bl      ext_0202cd14
    cmpwi   r3,0
    bne-    L020251c4
    mr      r31,r26
    b       L020252c0
L020251b8:
    lwz     r0,24(r11)
    cmpwi   r0,2
    bne-    L020251cc
L020251c4:
    mr      r31,r29
    b       L020252c0
L020251cc:
    addic.  r27,r27,-1
    addi    r26,r26,1
    addi    r29,r29,-1
    bne+    L0202512c
    b       L020252c0
L020251e0:
    cmpwi   r29,3
    bne-    L020252c0
    li      r12,-1
    srwi    r4,r25,16
    stw     r12,12(r1)
    clrlwi  r5,r25,16
    stw     r12,16(r1)
    li      r29,0
    li      r27,3
    addi    r31,r1,12
    lwz     r28,16(r3)
    bl      ext_020062f0
    mtctr   r27
L02025214:
    lbz     r7,816(r3)
    cmpwi   r7,0
    clrlwi  r12,r29,16
    beq-    L02025258
    cmplwi  r12,10
    addi    r7,r3,88
    bge-    L0202523c
    slwi    r8,r12,2
    add     r7,r7,r8
    b       L0202526c
L0202523c:
    lhz     r0,0(r7)
    mulli   r12,r0,76
    add     r9,r28,r12
    lwz     r11,24(r9)
    cmpwi   r11,2
    beq-    L020252a4
    b       L02025284
L02025258:
    cmplwi  r12,10
    addi    r7,r3,48
    bge-    L0202526c
    slwi    r11,r12,2
    add     r7,r7,r11
L0202526c:
    lhz     r0,0(r7)
    mulli   r12,r0,76
    add     r9,r28,r12
    lwz     r11,24(r9)
    cmpwi   r11,2
    beq-    L020252a4
L02025284:
    lwz     r0,0(r31)
    cmpwi   r0,-1
    bne-    L020252a0
    stw     r29,0(r31)
    addi    r29,r29,1
    bdnz+   L02025214
    b       L020252ac
L020252a0:
    stw     r29,4(r31)
L020252a4:
    addi    r29,r29,1
    bdnz+   L02025214
L020252ac:
    lwz     r3,36(r30)
    li      r4,2
    bl      ext_02008eb0
    slwi    r10,r3,2
    lwzx    r31,r10,r31
L020252c0:
    mr      r3,r31
    lmw     r25,20(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
