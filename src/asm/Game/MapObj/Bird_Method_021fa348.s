# Converted from the disassembly of 0x021fa348 (592 bytes). Name is a placeholder.
    .text
    .globl Bird_Method_021fa348
Bird_Method_021fa348:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r30,48(r1)
    stw     r31,52(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r28,40(r1)
    mr      r3,r31
    mr      r28,r5
    addi    r4,r1,8
    stw     r29,44(r1)
    stw     r0,60(r1)
    mr      r29,r6
    bl      ext_0215a1c8
    lwz     r0,0(r29)
    cmpwi   r0,2
    bne-    L021fa420
    lwz     r12,8(r1)
    cmplwi  r12,1
    ble-    L021fa3c8
    cmplwi  r12,9
    beq-    L021fa3c8
    cmplwi  r12,13
    beq-    L021fa3f4
    lwz     r28,40(r1)
    lwz     r29,44(r1)
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
L021fa3c8:
    lwz     r0,0(r28)
    cmpwi   r0,0
    beq-    L021fa578
    lwz     r3,240(r30)
    li      r7,5
    lwz     r5,124(r30)
    addi    r4,r1,12
    li      r6,0
    stw     r7,12(r1)
    bl      ext_0204efc0
    b       L021fa578
L021fa3f4:
    lwz     r8,0(r28)
    cmpwi   r8,0
    beq-    L021fa578
    lwz     r3,240(r30)
    li      r9,6
    lwz     r5,124(r30)
    addi    r4,r1,16
    li      r6,0
    stw     r9,16(r1)
    bl      ext_0204efc0
    b       L021fa578
L021fa420:
    cmpwi   r0,0
    bne-    L021fa578
    lwz     r10,8(r1)
    cmplwi  r10,11
    bge-    L021fa464
    cmplwi  r10,5
    beq-    L021fa520
    cmplwi  r10,9
    beq-    L021fa49c
    lwz     r28,40(r1)
    lwz     r29,44(r1)
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
L021fa464:
    cmplwi  r10,11
    beq-    L021fa49c
    cmplwi  r10,14
    beq-    L021fa4c8
    cmplwi  r10,16
    beq-    L021fa4f4
    lwz     r28,40(r1)
    lwz     r29,44(r1)
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
L021fa49c:
    lwz     r11,0(r28)
    cmpwi   r11,0
    beq-    L021fa578
    lwz     r3,240(r30)
    li      r12,5
    lwz     r5,124(r30)
    addi    r4,r1,20
    li      r6,0
    stw     r12,20(r1)
    bl      ext_0204efc0
    b       L021fa578
L021fa4c8:
    lwz     r0,0(r28)
    cmpwi   r0,0
    beq-    L021fa578
    lwz     r3,240(r30)
    li      r7,6
    lwz     r5,124(r30)
    addi    r4,r1,24
    li      r6,0
    stw     r7,24(r1)
    bl      ext_0204efc0
    b       L021fa578
L021fa4f4:
    lwz     r8,0(r28)
    cmpwi   r8,0
    beq-    L021fa578
    lwz     r3,240(r30)
    li      r9,7
    lwz     r5,124(r30)
    addi    r4,r1,28
    li      r6,0
    stw     r9,28(r1)
    bl      ext_0204efc0
    b       L021fa578
L021fa520:
    lwz     r10,0(r28)
    cmpwi   r10,0
    beq-    L021fa578
    lwz     r3,0(r31)
    bl      ext_02141ddc
    cmpwi   r3,0
    beq-    L021fa55c
    lwz     r3,240(r30)
    li      r11,5
    lwz     r5,124(r30)
    addi    r4,r1,32
    li      r6,0
    stw     r11,32(r1)
    bl      ext_0204efc0
    b       L021fa578
L021fa55c:
    lwz     r3,240(r30)
    li      r12,6
    lwz     r5,124(r30)
    addi    r4,r1,36
    li      r6,0
    stw     r12,36(r1)
    bl      ext_0204efc0
L021fa578:
    lwz     r28,40(r1)
    lwz     r29,44(r1)
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
