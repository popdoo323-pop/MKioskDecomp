# Converted from the disassembly of 0x024e4048 (324 bytes). Name is a placeholder.
    .text
    .globl Batch_024e4048
Batch_024e4048:
    stwu    r1,-112(r1)
    stmw    r26,88(r1)
    mflr    r0
    mr      r30,r4
    stw     r0,116(r1)
    mr      r29,r3
    bl      ext_0233b990
    lwz     r26,464(r3)
    addis   r27,r26,22
    lwzu    r31,-30540(r27)
    lwz     r0,432(r26)
    li      r28,0
    cmpwi   r31,0
    clrrwi  r10,r0,31
    bne-    L024e4090
    cmpwi   r10,0
    bne-    L024e410c
    b       L024e412c
L024e4090:
    li      r0,0
    stw     r0,432(r26)
    stw     r0,428(r26)
    cmpwi   r31,0
    stw     r28,0(r27)
    beq-    L024e412c
L024e40a8:
    stw     r28,64(r1)
    addi    r3,r1,16
    stw     r28,20(r1)
    stw     r28,28(r1)
    stw     r28,76(r1)
    stw     r28,72(r1)
    bl      ext_024dbfc0
    li      r0,9
    addi    r3,r1,16
    addi    r4,r1,12
    li      r6,7001
    li      r5,-1
    stw     r0,12(r1)
    bl      ext_024dc030
    li      r9,1
    li      r11,3
    stw     r9,24(r1)
    addi    r5,r1,16
    mr      r4,r30
    stw     r11,64(r1)
    lwz     r12,64(r1)
    mr      r3,r29
    stw     r31,68(r1)
    bl      ext_0248e498
    b       L024e4178
L024e410c:
    addi    r3,r26,432
    bl      ext_029b0be8
    li      r0,0
    stw     r0,432(r26)
    stw     r0,428(r26)
    mr.     r31,r3
    stw     r28,0(r27)
    bne+    L024e40a8
L024e412c:
    stw     r28,76(r1)
    addi    r3,r1,16
    stw     r28,28(r1)
    stw     r28,72(r1)
    stw     r28,20(r1)
    stw     r28,64(r1)
    bl      ext_024dbfc0
    addi    r3,r1,16
    addi    r4,r1,8
    li      r6,7001
    li      r5,5006
    stw     r28,8(r1)
    bl      ext_024dc030
    li      r7,1
    addi    r5,r1,16
    mr      r4,r30
    mr      r3,r29
    stw     r7,24(r1)
    bl      ext_0248e498
L024e4178:
    lmw     r26,88(r1)
    lwz     r0,116(r1)
    mtlr    r0
    addi    r1,r1,112
    blr
