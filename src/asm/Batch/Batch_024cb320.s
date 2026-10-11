# Converted from the disassembly of 0x024cb320 (260 bytes). Name is a placeholder.
    .text
    .globl Batch_024cb320
Batch_024cb320:
    stwu    r1,-48(r1)
    stmw    r23,12(r1)
    mflr    r0
    stw     r0,52(r1)
    mr      r30,r3
    lwz     r3,460(r30)
    cmpwi   r3,0
    beq-    L024cb410
    lwz     r4,168(r30)
    bl      ext_0248df4c
    cmpwi   r3,0
    beq-    L024cb410
    lwz     r7,104(r30)
    cmpwi   r7,0
    beq-    L024cb368
    lwz     r0,108(r30)
    cmpwi   r0,0
    bne-    L024cb3f4
L024cb368:
    lwz     r12,120(r30)
    mr.     r25,r12
    li      r23,0
    ble-    L024cb410
    li      r29,0
L024cb37c:
    cmplw   r23,r12
    lwz     r31,124(r30)
    bge-    L024cb38c
    add     r31,r31,r29
L024cb38c:
    lwz     r0,0(r31)
    mr.     r24,r0
    li      r27,0
    ble-    L024cb3dc
    li      r26,0
    mr      r28,r26
L024cb3a4:
    cmplw   r27,r0
    li      r3,0
    bge-    L024cb3b8
    lwz     r9,8(r31)
    lwzx    r3,r9,r26
L024cb3b8:
    li      r4,0
    stb     r28,24(r3)
    bl      ext_02480634
    addic.  r24,r24,-1
    addi    r27,r27,1
    addi    r26,r26,4
    beq-    L024cb3dc
    lwz     r0,0(r31)
    b       L024cb3a4
L024cb3dc:
    addic.  r25,r25,-1
    addi    r23,r23,1
    addi    r29,r29,12
    beq-    L024cb410
    lwz     r12,120(r30)
    b       L024cb37c
L024cb3f4:
    lwz     r10,84(r30)
    lwz     r0,132(r10)
    mtctr   r0
    mr      r3,r30
    bctrl
    mr      r3,r30
    bl      ext_024caf98
L024cb410:
    lmw     r23,12(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
