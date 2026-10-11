# Converted from the disassembly of 0x020255cc (456 bytes). Name is a placeholder.
    .text
    .globl Batch_020255cc
Batch_020255cc:
    stwu    r1,-56(r1)
    stmw    r23,20(r1)
    mflr    r0
    stw     r0,60(r1)
    mr      r29,r4
    mr      r28,r3
    lwz     r3,40(r28)
    lwz     r8,60(r3)
    lwz     r9,88(r8)
    lwz     r12,88(r9)
    lbz     r7,76(r12)
    li      r31,0
    cmpwi   r7,0
    li      r30,1
    beq-    L02025614
    li      r30,3
    stw     r30,8(r1)
    lwz     r8,8(r1)
L02025614:
    bl      ext_02015194
    lhz     r12,4(r29)
    lhz     r11,2(r29)
    lwz     r23,12(r29)
    li      r26,0
    sth     r11,12(r1)
    cmpwi   r23,0
    sth     r12,14(r1)
    lwz     r6,12(r1)
    ble-    L020256f0
    li      r24,2
    clrlwi  r5,r6,16
    srwi    r4,r6,16
    lwz     r27,16(r3)
    addi    r25,r1,8
    bl      ext_020062f0
    mtctr   r23
L02025658:
    lbz     r11,816(r3)
    cmpwi   r11,0
    clrlwi  r0,r26,16
    beq-    L0202569c
    cmplwi  r0,10
    addi    r9,r3,88
    bge-    L02025680
    slwi    r0,r0,2
    add     r9,r9,r0
    b       L020256b0
L02025680:
    lhz     r9,0(r9)
    mulli   r0,r9,76
    add     r6,r27,r0
    lwz     r12,24(r6)
    cmpwi   r12,0
    beq-    L020256e8
    b       L020256c8
L0202569c:
    cmplwi  r0,10
    addi    r9,r3,48
    bge-    L020256b0
    slwi    r0,r0,2
    add     r9,r9,r0
L020256b0:
    lhz     r9,0(r9)
    mulli   r0,r9,76
    add     r6,r27,r0
    lwz     r12,24(r6)
    cmpwi   r12,0
    beq-    L020256e8
L020256c8:
    lwz     r10,40(r28)
    mr      r30,r24
    stw     r30,8(r1)
    lbz     r11,132(r10)
    cmpwi   r11,0
    lwz     r0,0(r25)
    beq-    L0202570c
    b       L02025700
L020256e8:
    addi    r26,r26,1
    bdnz+   L02025658
L020256f0:
    lwz     r10,40(r28)
    lbz     r11,132(r10)
    cmpwi   r11,0
    beq-    L0202570c
L02025700:
    li      r30,4
    stw     r30,8(r1)
    lwz     r0,8(r1)
L0202570c:
    cmplwi  r30,1
    blt-    L0202577c
    beq-    L02025730
    cmplwi  r30,3
    blt-    L02025744
    beq-    L02025758
    cmplwi  r30,4
    beq-    L0202576c
    b       L0202577c
L02025730:
    mr      r3,r28
    mr      r4,r29
    bl      ext_02024e0c
    clrlwi  r31,r3,24
    b       L0202577c
L02025744:
    mr      r3,r28
    mr      r4,r29
    bl      ext_020250d0
    clrlwi  r31,r3,24
    b       L0202577c
L02025758:
    mr      r3,r28
    mr      r4,r29
    bl      ext_020252d8
    clrlwi  r31,r3,24
    b       L0202577c
L0202576c:
    mr      r3,r28
    mr      r4,r29
    bl      ext_020254a0
    clrlwi  r31,r3,24
L0202577c:
    mr      r3,r31
    lmw     r23,20(r1)
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    blr
