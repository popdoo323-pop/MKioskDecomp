# Converted from the disassembly of 0x020455e4 (420 bytes). Name is a placeholder.
    .text
    .globl Batch_020455e4
Batch_020455e4:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mflr    r0
    stw     r0,36(r1)
    lis     r12,4117
    lwz     r12,-28988(r12)
    mr      r30,r3
    mr      r31,r4
    mr      r26,r5
    cmpwi   r12,0
    mr      r27,r6
    beq-    L02045774
    bl      ext_02041f68
    bl      ext_020427dc
    lwz     r28,72(r3)
    cmpwi   r28,2
    mfcr    r10
    lwz     r0,80(r30)
    srwi    r29,r10,31
    cmpwi   r0,0
    xori    r29,r29,1
    beq-    L020456d0
    cmpwi   r29,0
    li      r4,0
    mr      r3,r30
    beq-    L02045670
    li      r5,100
    bl      ext_020453a4
    li      r5,100
    li      r4,3
    mr      r3,r30
    bl      ext_020453a4
    cmpwi   r26,0
    beq-    L020456d0
    b       L020456ac
L02045670:
    bl      ext_020455cc
    cmpwi   r27,0
    beq-    L02045684
    li      r12,1
    stb     r12,0(r27)
L02045684:
    cmpwi   r31,0
    bne-    L020456c4
    cmpwi   r28,2
    blt-    L020456c4
    li      r5,100
    li      r4,3
    mr      r3,r30
    bl      ext_020453a4
    cmpwi   r26,0
    beq-    L020456d0
L020456ac:
    li      r0,1
    stb     r0,0(r26)
    lwz     r0,84(r30)
    cmpwi   r0,0
    beq-    L02045774
    b       L020456dc
L020456c4:
    mr      r3,r30
    li      r4,3
    bl      ext_020455cc
L020456d0:
    lwz     r0,84(r30)
    cmpwi   r0,0
    beq-    L02045774
L020456dc:
    cmpwi   r29,0
    li      r4,1
    mr      r3,r30
    beq-    L02045710
    li      r5,100
    bl      ext_020453a4
    li      r5,100
    li      r4,4
    mr      r3,r30
    bl      ext_020453a4
    cmpwi   r26,0
    beq-    L02045774
    b       L0204574c
L02045710:
    bl      ext_020455cc
    cmpwi   r27,0
    beq-    L02045724
    li      r0,1
    stb     r0,0(r27)
L02045724:
    cmpwi   r31,0
    bne-    L02045768
    cmpwi   r28,2
    blt-    L02045768
    li      r5,100
    li      r4,4
    mr      r3,r30
    bl      ext_020453a4
    cmpwi   r26,0
    beq-    L02045774
L0204574c:
    li      r9,1
    stb     r9,0(r26)
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L02045768:
    mr      r3,r30
    li      r4,4
    bl      ext_020455cc
L02045774:
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
