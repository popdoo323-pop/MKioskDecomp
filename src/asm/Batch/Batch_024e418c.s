# Converted from the disassembly of 0x024e418c (260 bytes). Name is a placeholder.
    .text
    .globl Batch_024e418c
Batch_024e418c:
    stwu    r1,-40(r1)
    stmw    r26,16(r1)
    mflr    r0
    mr      r30,r4
    stw     r0,44(r1)
    mr      r29,r3
    bl      ext_0233b990
    lwz     r26,464(r3)
    addis   r31,r26,22
    lwzu    r8,-30540(r31)
    li      r27,0
    lwz     r0,432(r26)
    mr      r28,r27
    cmpwi   r8,0
    clrrwi  r6,r0,31
    bne-    L024e41f4
    cmpwi   r6,0
    beq-    L024e4208
    addi    r3,r26,432
    bl      ext_029b0be8
    li      r0,0
    stw     r0,428(r26)
    stw     r0,432(r26)
    mr      r28,r3
    stw     r27,0(r31)
    b       L024e4208
L024e41f4:
    li      r0,0
    stw     r0,428(r26)
    stw     r0,432(r26)
    mr      r28,r8
    stw     r27,0(r31)
L024e4208:
    addi    r31,r30,28
    li      r6,7001
    cmpwi   r28,0
    mr      r3,r31
    bne-    L024e4244
    li      r5,5006
    addi    r4,r1,8
    stw     r27,8(r1)
    bl      ext_024dc030
    li      r0,1
    mr      r3,r29
    mr      r4,r30
    stw     r0,8(r31)
    bl      ext_0248d73c
    b       L024e427c
L024e4244:
    li      r0,9
    addi    r4,r1,12
    li      r5,-1
    stw     r0,12(r1)
    bl      ext_024dc030
    li      r0,1
    stw     r28,52(r31)
    li      r7,3
    stw     r0,8(r31)
    mr      r3,r29
    mr      r4,r30
    stw     r7,48(r31)
    lwz     r9,48(r31)
    bl      ext_0248d73c
L024e427c:
    lmw     r26,16(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
