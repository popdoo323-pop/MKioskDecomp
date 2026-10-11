# Converted from the disassembly of 0x020164c0 (420 bytes). Name is a placeholder.
    .text
    .globl Batch_020164c0
Batch_020164c0:
    stwu    r1,-56(r1)
    stmw    r21,12(r1)
    mflr    r0
    stw     r0,60(r1)
    mr      r29,r4
    mr.     r26,r6
    mr      r28,r3
    mr      r25,r5
    lwz     r3,88(r28)
    beq-    L020164f8
    lwz     r24,164(r3)
    cmpwi   r24,0
    ble-    L0201664c
    b       L02016504
L020164f8:
    lwz     r24,168(r3)
    cmpwi   r24,0
    ble-    L0201664c
L02016504:
    mr      r4,r24
    bl      ext_02008eb0
    cmpwi   r24,0
    mr      r31,r24
    mr      r27,r3
    bgt-    L02016520
    li      r31,1
L02016520:
    neg     r23,r25
L02016524:
    cmpwi   r26,0
    lwz     r12,88(r28)
    beq-    L02016558
    cmplwi  r27,12
    addi    r11,r12,68
    bge-    L02016544
    slwi    r0,r27,2
    add     r11,r11,r0
L02016544:
    lwz     r3,72(r28)
    lwz     r22,0(r11)
    cmplw   r3,r22
    bne-    L0201657c
    b       L02016644
L02016558:
    cmplwi  r27,12
    addi    r10,r12,116
    bge-    L0201656c
    slwi    r0,r27,2
    add     r10,r10,r0
L0201656c:
    lwz     r3,72(r28)
    lwz     r22,0(r10)
    cmplw   r3,r22
    beq-    L02016644
L0201657c:
    bl      ext_02030888
    mr      r30,r3
    mr      r3,r22
    bl      ext_02030888
    subf    r21,r3,r30
    lwz     r3,72(r28)
    mr      r4,r22
    bl      ext_02031634
    xori    r30,r3,1
    lwz     r3,72(r28)
    mr      r4,r22
    clrlwi  r30,r30,24
    bl      ext_020152f0
    cmpwi   r30,0
    beq-    L02016634
    cmpwi   r3,0
    bne-    L02016634
    lwz     r3,84(r22)
    bl      ext_0218608c
    cmpwi   r3,0
    bne-    L02016634
    lwz     r3,84(r22)
    bl      ext_021861fc
    cmpwi   r3,0
    bne-    L02016634
    cmpwi   r21,0
    blt-    L02016610
    ble-    L02016634
    cmpw    r21,r25
    bgt-    L02016634
    stw     r22,0(r29)
    lmw     r21,12(r1)
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    li      r3,1
    blr
L02016610:
    cmpw    r21,r23
    blt-    L02016634
    stw     r22,0(r29)
    lmw     r21,12(r1)
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    li      r3,2
    blr
L02016634:
    addi    r27,r27,1
    divw    r0,r27,r24
    mullw   r0,r0,r24
    subf    r27,r0,r27
L02016644:
    addic.  r31,r31,-1
    bne+    L02016524
L0201664c:
    lmw     r21,12(r1)
    lwz     r0,60(r1)
    mtlr    r0
    addi    r1,r1,56
    li      r3,0
    blr
