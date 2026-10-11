# Converted from the disassembly of 0x020094bc (280 bytes). Name is a placeholder.
    .text
    .globl Batch_020094bc
Batch_020094bc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    mr      r30,r4
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lwz     r3,84(r30)
    bl      ext_02185c38
    mr      r31,r3
    cmplwi  r31,12
    addi    r12,r29,68
    bge-    L020094fc
    slwi    r0,r31,2
    add     r12,r12,r0
L020094fc:
    lis     r10,4117
    stw     r30,0(r12)
    lwz     r10,-3296(r10)
    lwz     r12,420(r10)
    cmpwi   r12,1
    bne-    L02009554
    bl      ext_0233b990
    cmplwi  r31,12
    addi    r11,r3,936
    bge-    L0200952c
    mulli   r0,r31,12
    add     r11,r11,r0
L0200952c:
    lbz     r0,0(r11)
    cmpwi   r0,0
    li      r31,0
    beq-    L02009550
    lwz     r3,84(r30)
    bl      ext_02185c14
    cmpwi   r3,0
    beq-    L02009550
    li      r31,1
L02009550:
    stb     r31,101(r30)
L02009554:
    lwz     r3,84(r30)
    bl      ext_02185be4
    cmpwi   r3,0
    bne-    L02009570
    lbz     r0,101(r30)
    cmpwi   r0,0
    beq-    L0200958c
L02009570:
    lwz     r10,172(r29)
    lwz     r3,52(r29)
    addi    r10,r10,1
    cmpwi   r3,0
    stw     r10,172(r29)
    beq-    L020095b8
    b       L020095b0
L0200958c:
    mr      r3,r29
    mr      r4,r30
    bl      ext_0200945c
    lwz     r10,168(r29)
    lwz     r3,52(r29)
    addi    r10,r10,1
    cmpwi   r3,0
    stw     r10,168(r29)
    beq-    L020095b8
L020095b0:
    mr      r4,r30
    bl      ext_0202a134
L020095b8:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
