# Converted from the disassembly of 0x0203c574 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c574
Batch_0203c574:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mflr    r0
    stw     r0,36(r1)
    mr      r29,r6
    mr      r31,r3
    lwz     r3,32(r31)
    mr      r27,r5
    mr      r30,r7
    mr      r26,r4
    bl      ext_0205d2e8
    cmpwi   r3,0
    bne-    L0203c624
    lwz     r3,32(r31)
    mr      r4,r27
    li      r5,0
    bl      ext_0205d204
    mr.     r28,r3
    beq-    L0203c624
    li      r5,0
    mr      r4,r27
    mr      r3,r31
    bl      ext_0203c56c
    mr      r6,r30
    mr      r5,r26
    mr      r4,r28
    mr      r3,r31
    bl      ext_020546e8
    cmpwi   r3,0
    bne-    L0203c624
    cmpwi   r29,0
    beq-    L0203c60c
    lwz     r0,0(r28)
    cmpwi   r0,0
    beq-    L0203c60c
    lwz     r3,0(r28)
    mr      r4,r29
    bl      ext_025878ac
L0203c60c:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    li      r3,1
    blr
L0203c624:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    li      r3,0
    blr
