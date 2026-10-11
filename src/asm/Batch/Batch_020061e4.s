# Converted from the disassembly of 0x020061e4 (264 bytes). Name is a placeholder.
    .text
    .globl Batch_020061e4
Batch_020061e4:
    stwu    r1,-112(r1)
    stmw    r25,84(r1)
    mflr    r0
    stw     r0,116(r1)
    mr      r28,r3
    lwz     r31,444(r28)
    addi    r5,r28,432
    lwz     r12,436(r28)
    subf    r29,r31,r5
    subf    r30,r31,r12
    cmplw   r30,r29
    beq-    L020062d8
    addi    r27,r1,20
    addi    r26,r1,32
    addi    r25,r1,8
L02006220:
    lwz     r7,12(r30)
    cmpwi   r7,0
    beq-    L020062c4
    lwz     r11,16(r30)
    lha     r6,20(r30)
    lwz     r8,32(r11)
    cmplw   r6,r8
    li      r3,0
    bge-    L02006250
    lwz     r11,40(r11)
    slwi    r10,r6,2
    lwzx    r3,r10,r11
L02006250:
    lwz     r12,100(r3)
    lwz     r0,132(r12)
    mtctr   r0
    lha     r5,22(r30)
    addi    r4,r1,32
    bctrl
    mr      r5,r27
    addi    r4,r28,476
    mr      r3,r26
    bl      ext_02557af0
    lwz     r7,504(r28)
    mr      r3,r26
    lwz     r8,508(r28)
    stw     r7,12(r1)
    lwz     r6,500(r28)
    stw     r8,16(r1)
    mr      r4,r25
    mr      r5,r25
    stw     r6,8(r1)
    bl      ext_02557b44
    lwz     r9,20(r28)
    lwz     r0,220(r9)
    mtctr   r0
    lwz     r4,12(r30)
    mr      r3,r28
    addi    r7,r1,8
    addi    r6,r1,20
    addi    r5,r1,32
    bctrl
L020062c4:
    add     r9,r30,r31
    lwz     r0,4(r9)
    subf    r30,r31,r0
    cmplw   r30,r29
    bne+    L02006220
L020062d8:
    lmw     r25,84(r1)
    lwz     r0,116(r1)
    mtlr    r0
    addi    r1,r1,112
    blr
