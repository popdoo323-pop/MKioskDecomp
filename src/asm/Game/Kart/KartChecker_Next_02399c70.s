# Converted from the disassembly of 0x02399c70 (668 bytes). Name is a placeholder.
    .text
    .globl KartChecker_Next_02399c70
KartChecker_Next_02399c70:
    mflr    r0
    stwu    r1,-48(r1)
    stw     r30,40(r1)
    stw     r31,44(r1)
    mr      r30,r3
    stw     r0,52(r1)
    lwz     r9,40(r30)
    rlwinm. r5,r9,30,31,31
    beq-    L02399eb4
    lis     r31,4117
    lwzu    r12,-3296(r31)
    lwz     r0,424(r12)
    cmpwi   r0,1
    bne-    L02399eec
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L02399cb8
    lwz     r3,424(r3)
L02399cb8:
    li      r7,3
    addi    r4,r1,12
    li      r5,0
    stw     r7,12(r1)
    bl      ext_0243293c
    cmpwi   r3,0
    blt-    L02399d3c
    bl      ext_02421764
    lwz     r9,444(r3)
    lwz     r10,40(r9)
    lhz     r0,52(r30)
    cmplwi  r10,1
    lwz     r10,44(r9)
    ble-    L02399cf4
    addi    r10,r10,4
L02399cf4:
    mulli   r12,r0,60
    lbz     r6,54(r30)
    lwz     r11,0(r10)
    add     r5,r6,r12
    lwz     r11,4(r11)
    mulli   r0,r5,1000
    lhz     r6,876(r11)
    lbz     r8,878(r11)
    mulli   r5,r6,60
    lhz     r10,56(r30)
    add     r7,r8,r5
    lhz     r11,880(r11)
    mulli   r9,r7,1000
    add     r8,r10,r0
    add     r0,r11,r9
    cmplw   r8,r0
    bge-    L02399eb4
    b       L02399e8c
L02399d3c:
    lwz     r12,0(r31)
    lwz     r5,416(r12)
    li      r31,1
    stw     r5,8(r1)
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L02399d5c
    lwz     r3,432(r3)
L02399d5c:
    li      r4,255
    bl      ext_02442ecc
    lwz     r6,8(r1)
    stw     r6,16(r1)
    lwz     r0,16(r1)
    mulli   r7,r0,396
    add     r8,r3,r7
    lwz     r9,-6316(r8)
    cmpwi   r9,4
    addi    r12,r8,-6336
    beq-    L02399e30
    lwz     r6,12(r12)
    cmpwi   r6,-1
    beq-    L02399e30
    lwz     r8,0(r12)
    cmpwi   r8,-1
    beq-    L02399e30
    lwz     r9,4(r12)
    cmpwi   r9,-1
    beq-    L02399e30
    lwz     r11,8(r12)
    cmpwi   r11,-1
    beq-    L02399e30
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L02399dc8
    lwz     r3,432(r3)
L02399dc8:
    li      r4,255
    bl      ext_02442ecc
    lwz     r10,8(r1)
    lhz     r8,52(r30)
    stw     r10,20(r1)
    lwz     r0,20(r1)
    mulli   r7,r8,60
    lbz     r10,54(r30)
    mulli   r0,r0,396
    add     r9,r10,r7
    add     r12,r3,r0
    mulli   r11,r9,1000
    lhz     r7,-6308(r12)
    lbz     r9,-6306(r12)
    mulli   r6,r7,60
    lhz     r5,56(r30)
    add     r8,r9,r6
    lhz     r12,-6304(r12)
    mulli   r10,r8,1000
    add     r0,r5,r11
    add     r11,r12,r10
    subfc   r5,r11,r0
    subfe   r7,r5,r5
    neg.    r8,r7
    bne-    L02399e30
    li      r31,0
L02399e30:
    addi    r3,r1,24
    clrlwi  r31,r31,24
    bl      ext_0238b788
    lhz     r0,24(r1)
    lhz     r11,52(r30)
    mulli   r10,r0,60
    lbz     r12,26(r1)
    mulli   r0,r11,60
    add     r12,r12,r10
    lbz     r7,54(r30)
    mulli   r5,r12,1000
    lhz     r10,56(r30)
    add     r6,r7,r0
    lhz     r11,28(r1)
    mulli   r8,r6,1000
    add     r6,r11,r5
    add     r0,r10,r8
    li      r7,0
    subfc   r5,r6,r0
    addze.  r9,r7
    bne-    L02399ea8
    cmpwi   r31,0
    beq-    L02399ea8
L02399e8c:
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    li      r3,0
    blr
L02399ea8:
    lwz     r8,40(r30)
    rlwinm. r0,r8,26,31,31
    beq-    L02399ed0
L02399eb4:
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    li      r3,2
    blr
L02399ed0:
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    li      r3,1
    blr
L02399eec:
    lwz     r3,44(r30)
    bl      ext_02399c30
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
