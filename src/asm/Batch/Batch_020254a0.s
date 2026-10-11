# Converted from the disassembly of 0x020254a0 (300 bytes). Name is a placeholder.
    .text
    .globl Batch_020254a0
Batch_020254a0:
    stwu    r1,-48(r1)
    stmw    r24,16(r1)
    mflr    r0
    stw     r0,52(r1)
    mr      r12,r4
    lwz     r7,44(r3)
    lhz     r5,4(r12)
    lwz     r27,0(r7)
    lhz     r4,2(r12)
    mr      r3,r27
    lwz     r24,12(r12)
    bl      ext_020062f0
    li      r31,0
    mr      r28,r3
    cmpwi   r24,0
    mr      r29,r31
    mr      r30,r31
    ble-    L020255b4
    lbz     r25,816(r28)
    lwz     r26,16(r27)
L020254f0:
    cmpwi   r25,0
    clrlwi  r0,r30,16
    beq-    L02025544
    cmplwi  r0,10
    addi    r10,r28,88
    bge-    L02025514
    slwi    r12,r0,2
    add     r10,r10,r12
    b       L02025558
L02025514:
    lhz     r0,0(r10)
    sth     r0,8(r1)
    lhz     r6,2(r10)
    sth     r6,10(r1)
    lhz     r0,0(r10)
    mulli   r8,r0,76
    add     r11,r26,r8
    lwz     r0,24(r11)
    cmpwi   r0,2
    lwz     r10,8(r1)
    bne-    L02025584
    b       L020255a8
L02025544:
    cmplwi  r0,10
    addi    r10,r28,48
    bge-    L02025558
    slwi    r8,r0,2
    add     r10,r10,r8
L02025558:
    lhz     r0,0(r10)
    sth     r0,8(r1)
    lhz     r6,2(r10)
    sth     r6,10(r1)
    lhz     r0,0(r10)
    mulli   r8,r0,76
    add     r11,r26,r8
    lwz     r0,24(r11)
    cmpwi   r0,2
    lwz     r10,8(r1)
    beq-    L020255a8
L02025584:
    clrlwi  r5,r10,16
    srwi    r4,r10,16
    mr      r3,r27
    bl      ext_020062f0
    lha     r7,814(r3)
    cmpw    r7,r29
    ble-    L020255a8
    mr      r31,r30
    mr      r29,r7
L020255a8:
    addic.  r24,r24,-1
    addi    r30,r30,1
    bne+    L020254f0
L020255b4:
    mr      r3,r31
    lmw     r24,16(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
