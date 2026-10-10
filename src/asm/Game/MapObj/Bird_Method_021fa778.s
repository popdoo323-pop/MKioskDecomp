# Converted from the disassembly of 0x021fa778 (556 bytes). Name is a placeholder.
    .text
    .globl Bird_Method_021fa778
Bird_Method_021fa778:
    stwu    r1,-104(r1)
    stmw    r27,84(r1)
    mflr    r0
    stw     r0,108(r1)
    mr      r29,r4
    mr      r28,r3
    mr      r3,r29
    mr      r30,r5
    lis     r31,4117
    lwz     r31,-3284(r31)
    bl      ext_021d133c
    lwz     r6,60(r31)
    slwi    r9,r3,2
    lwzx    r27,r9,r6
    mr      r3,r27
    li      r31,0
    bl      ext_02186154
    cmpwi   r3,0
    beq-    L021fa7d8
    li      r7,3
    stw     r7,8(r1)
    lwz     r11,8(r1)
    stw     r11,40(r1)
    b       L021fa84c
L021fa7d8:
    mr      r3,r27
    bl      ext_021860b8
    cmpwi   r3,0
    beq-    L021fa7fc
    li      r9,2
    stw     r9,8(r1)
    lwz     r11,8(r1)
    stw     r11,44(r1)
    b       L021fa84c
L021fa7fc:
    mr      r3,r27
    bl      ext_02185e64
    cmpwi   r3,0
    bne-    L021fa83c
    mr      r3,r27
    bl      ext_02185ed0
    cmpwi   r3,0
    bne-    L021fa83c
    stw     r31,8(r1)
    lwz     r0,8(r1)
    lwz     r12,200(r28)
    cmplwi  r0,4
    addi    r7,r12,1788
    lwz     r10,8(r1)
    blt-    L021fa864
    b       L021fa868
L021fa83c:
    li      r10,1
    stw     r10,8(r1)
    lwz     r11,8(r1)
    stw     r11,48(r1)
L021fa84c:
    lwz     r0,8(r1)
    lwz     r12,200(r28)
    cmplwi  r0,4
    addi    r7,r12,1788
    lwz     r10,8(r1)
    bge-    L021fa868
L021fa864:
    add     r7,r7,r0
L021fa868:
    lbz     r11,0(r7)
    cmplwi  r10,4
    addi    r6,r12,1784
    stw     r11,16(r1)
    bge-    L021fa880
    add     r6,r6,r10
L021fa880:
    lbz     r11,0(r6)
    lwz     r12,184(r28)
    stw     r11,12(r1)
    lwz     r0,348(r12)
    mtctr   r0
    addi    r5,r1,12
    addi    r4,r1,16
    mr      r7,r30
    mr      r6,r29
    mr      r3,r28
    bctrl
    mr      r3,r29
    bl      ext_021fa680
    lwz     r10,0(r3)
    stw     r10,52(r1)
    lwz     r0,4(r3)
    stw     r0,56(r1)
    lwz     r5,8(r3)
    stw     r5,60(r1)
    lwz     r6,12(r3)
    stw     r6,64(r1)
    lwz     r8,16(r3)
    stw     r8,68(r1)
    lwz     r9,20(r3)
    addi    r7,r1,52
    stw     r9,72(r1)
    lwz     r10,24(r3)
    mr      r3,r7
    stw     r10,76(r1)
    bl      ext_021fa6a4
    cmpwi   r3,0
    beq-    L021fa990
    lwz     r12,184(r28)
    lwz     r0,388(r12)
    mtctr   r0
    addi    r4,r1,52
    mr      r5,r30
    mr      r3,r28
    bctrl
    lwz     r8,12(r1)
    lwz     r7,184(r28)
    stw     r8,20(r1)
    lwz     r9,364(r7)
    mtctr   r9
    addi    r7,r1,52
    addi    r5,r1,20
    addi    r4,r1,24
    mr      r6,r29
    mr      r3,r28
    bctrl
    lwz     r0,240(r28)
    cmpwi   r0,0
    beq-    L021fa990
    lwz     r12,16(r1)
    lwz     r5,12(r1)
    lwz     r0,24(r1)
    stw     r5,32(r1)
    lwz     r11,184(r28)
    stw     r0,36(r1)
    stw     r12,28(r1)
    lwz     r0,372(r11)
    mtctr   r0
    addi    r5,r1,28
    addi    r6,r1,32
    addi    r7,r1,36
    mr      r4,r27
    mr      r3,r28
    bctrl
L021fa990:
    lmw     r27,84(r1)
    lwz     r0,108(r1)
    mtlr    r0
    addi    r1,r1,104
    blr
