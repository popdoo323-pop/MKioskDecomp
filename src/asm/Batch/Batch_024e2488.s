# Converted from the disassembly of 0x024e2488 (336 bytes). Name is a placeholder.
    .text
    .globl Batch_024e2488
Batch_024e2488:
    stwu    r1,-48(r1)
    mflr    r0
    stmw    r27,28(r1)
    mr      r27,r3
    li      r6,3
    li      r3,1
    mr      r28,r4
    stw     r0,52(r1)
    mr      r29,r5
    addi    r4,r1,20
    stw     r6,20(r1)
    bl      ext_024ad2d0
    bl      ext_02421764
    mr.     r30,r3
    beq-    L024e24c8
    lwz     r30,432(r30)
L024e24c8:
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L024e24d8
    lwz     r3,424(r3)
L024e24d8:
    lwz     r0,52(r3)
    cmplwi  r0,1
    li      r31,0
    ble-    L024e24f0
    lwz     r10,60(r3)
    lwz     r31,4(r10)
L024e24f0:
    li      r4,255
    mr      r3,r30
    bl      ext_02442ecc
    mulli   r12,r27,396
    add     r7,r3,r12
    lwzu    r0,19008(r7)
    lbz     r5,17(r7)
    lhz     r11,18(r7)
    lbz     r6,16(r7)
    lwz     r8,20(r7)
    lwz     r12,4(r7)
    lwz     r10,8(r7)
    lwz     r9,12(r7)
    lwz     r7,24(r7)
    stb     r5,453(r31)
    stw     r12,440(r31)
    stw     r10,444(r31)
    xori    r28,r28,1
    stw     r7,460(r31)
    stw     r8,456(r31)
    sth     r11,454(r31)
    stw     r0,436(r31)
    stb     r6,452(r31)
    li      r0,1
    stw     r9,448(r31)
    stb     r0,16(r1)
    li      r12,255
    stw     r27,12(r1)
    addi    r4,r1,8
    stb     r12,17(r1)
    mr      r3,r30
    stw     r28,8(r1)
    bl      ext_02442d6c
    cmpwi   r29,0
    mr      r29,r3
    beq-    L024e2588
    mr      r3,r30
    bl      ext_0244535c
L024e2588:
    bl      ext_02421764
    lwz     r6,444(r3)
    lwz     r0,40(r6)
    cmplw   r28,r0
    lwz     r11,44(r6)
    bge-    L024e25a8
    slwi    r0,r28,2
    add     r11,r11,r0
L024e25a8:
    lwz     r11,0(r11)
    lwz     r10,4(r11)
    li      r5,1
    mr      r3,r31
    addi    r4,r10,560
    bl      ext_0242f80c
    mr      r3,r29
    lmw     r27,28(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
