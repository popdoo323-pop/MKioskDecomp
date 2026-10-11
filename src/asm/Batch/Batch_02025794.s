# Converted from the disassembly of 0x02025794 (504 bytes). Name is a placeholder.
    .text
    .globl Batch_02025794
Batch_02025794:
    stwu    r1,-40(r1)
    stmw    r25,12(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r28,r4
    lhz     r12,2(r28)
    lhz     r0,4(r28)
    mr      r30,r3
    sth     r12,8(r1)
    lwz     r9,44(r30)
    mr      r27,r5
    sth     r0,10(r1)
    lwz     r31,8(r1)
    cmplwi  r12,65535
    lwz     r3,0(r9)
    beq-    L020257e0
    clrlwi  r6,r31,16
    cmplwi  r6,65535
    bne-    L020257f0
L020257e0:
    lhz     r7,6(r28)
    lhz     r8,8(r28)
    rlwimi  r31,r7,16,0,15
    rlwimi  r31,r8,0,16,31
L020257f0:
    clrlwi  r5,r31,16
    srwi    r4,r31,16
    bl      ext_020062f0
    mr      r29,r3
    lbz     r10,816(r29)
    cmpwi   r10,0
    li      r3,0
    beq-    L02025824
    lwz     r12,44(r29)
    cmpwi   r12,0
    stw     r12,12(r28)
    ble-    L02025974
    b       L02025834
L02025824:
    lwz     r12,40(r29)
    cmpwi   r12,0
    stw     r12,12(r28)
    ble-    L02025974
L02025834:
    cmpwi   r12,2
    blt-    L02025910
    cmpwi   r27,-1
    li      r25,0
    beq-    L02025904
    lbz     r8,816(r29)
    cmpwi   r8,0
    li      r26,0
    bne-    L020258a8
    cmpwi   r12,0
    bgt-    L02025864
    li      r12,1
L02025864:
    addi    r9,r29,48
    slwi    r11,r26,2
    add     r7,r9,r11
L02025870:
    mr      r4,r7
L02025874:
    lhz     r0,0(r4)
    cmplw   r0,r27
    bne-    L02025888
    li      r25,1
    mr      r3,r26
L02025888:
    addic.  r12,r12,-1
    addi    r26,r26,1
    addi    r7,r7,4
    beq-    L020258fc
    cmplwi  r26,10
    blt+    L02025870
    mr      r4,r9
    b       L02025874
L020258a8:
    cmpwi   r12,0
    bgt-    L020258b4
    li      r12,1
L020258b4:
    addi    r10,r29,88
    slwi    r0,r26,2
    add     r5,r10,r0
    b       L020258cc
L020258c4:
    cmplwi  r26,10
    bge-    L020258d4
L020258cc:
    mr      r4,r5
    b       L020258d8
L020258d4:
    mr      r4,r10
L020258d8:
    lhz     r6,0(r4)
    cmplw   r6,r27
    bne-    L020258ec
    li      r25,1
    mr      r3,r26
L020258ec:
    addic.  r12,r12,-1
    addi    r26,r26,1
    addi    r5,r5,4
    bne+    L020258c4
L020258fc:
    cmpwi   r25,0
    bne-    L02025914
L02025904:
    mr      r3,r30
    mr      r4,r28
    bl      ext_020255cc
L02025910:
    lbz     r8,816(r29)
L02025914:
    cmpwi   r8,0
    beq-    L0202594c
    cmplwi  r3,10
    addi    r9,r29,88
    bge-    L02025934
    slwi    r0,r3,2
    add     r9,r9,r0
    b       L02025960
L02025934:
    lhz     r8,0(r9)
    lhz     r0,2(r9)
    rlwimi  r31,r8,16,0,15
    stw     r3,16(r28)
    rlwimi  r31,r0,0,16,31
    b       L02025974
L0202594c:
    cmplwi  r3,10
    addi    r9,r29,48
    bge-    L02025960
    slwi    r7,r3,2
    add     r9,r9,r7
L02025960:
    lhz     r8,0(r9)
    lhz     r0,2(r9)
    rlwimi  r31,r8,16,0,15
    rlwimi  r31,r0,0,16,31
    stw     r3,16(r28)
L02025974:
    mr      r3,r31
    lmw     r25,12(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
