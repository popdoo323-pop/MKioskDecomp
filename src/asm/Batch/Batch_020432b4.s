# Converted from the disassembly of 0x020432b4 (532 bytes). Name is a placeholder.
    .text
    .globl Batch_020432b4
Batch_020432b4:
    stwu    r1,-48(r1)
    stmw    r27,28(r1)
    mflr    r0
    stw     r0,52(r1)
    lis     r8,4119
    lwzu    r9,3516(r8)
    cmpwi   r9,0
    mr      r31,r3
    bne-    L020432ec
    li      r10,1
    li      r11,4096
    stw     r10,0(r8)
    lis     r8,4119
    stw     r11,5816(r8)
L020432ec:
    lwz     r0,88(r31)
    addi    r29,r31,68
    slwi    r12,r0,2
    lwzx    r27,r12,r29
    lwz     r5,12(r27)
    lwz     r9,132(r5)
    mtctr   r9
    mr      r3,r27
    li      r4,4
    bctrl
    lwz     r6,12(r27)
    lwz     r7,52(r6)
    mr      r30,r3
    mtctr   r7
    mr      r4,r30
    li      r5,4
    mr      r3,r27
    bctrl
    li      r4,0
    mr      r5,r30
    mr      r28,r3
    bl      ext_029aacf8
    lwz     r8,12(r27)
    lwz     r0,60(r8)
    mtctr   r0
    mr      r4,r28
    mr      r3,r27
    bctrl
    lwz     r7,112(r31)
    lwz     r8,52(r7)
    mtctr   r8
    lbz     r4,204(r31)
    mr      r3,r31
    bctrl
    lwz     r9,112(r31)
    lwz     r10,44(r9)
    mtctr   r10
    lbz     r4,205(r31)
    mr      r3,r31
    bctrl
    lwz     r11,0(r31)
    cmpwi   r11,0
    beq-    L0204339c
    lwz     r11,16(r11)
L0204339c:
    lwz     r0,312(r11)
    lwz     r12,112(r31)
    stw     r0,12(r1)
    lwz     r5,188(r12)
    mtctr   r5
    addi    r4,r1,24
    mr      r3,r31
    addi    r28,r11,200
    bctrl
    lis     r30,4096
    lwz     r5,24(r1)
    addi    r30,r30,20524
    lis     r6,14322
    slwi    r0,r5,3
    addi    r6,r6,-19861
    add     r7,r28,r0
    xor     r6,r31,r6
    li      r8,1
    stwx    r6,r28,r0
    lis     r9,4096
    stb     r8,4(r7)
    lwz     r0,20(r29)
    addi    r9,r9,20884
    stw     r30,20(r1)
    slwi    r10,r0,2
    li      r6,-1
    addi    r4,r1,16
    lwzx    r5,r10,r29
    li      r7,0
    li      r3,4096
    stw     r9,16(r1)
    bl      ext_0261b3e8
    lwz     r12,112(r31)
    lwz     r0,292(r12)
    mr      r28,r3
    mtctr   r0
    mr      r4,r28
    mr      r3,r31
    bctrl
    lis     r12,4124
    lwz     r9,12(r1)
    lwz     r12,27688(r12)
    stw     r9,8(r1)
    mr      r29,r3
    lwz     r7,112(r31)
    stw     r30,20(r1)
    stw     r12,16(r1)
    lwz     r10,196(r7)
    mtctr   r10
    addi    r4,r1,8
    mr      r3,r31
    mr      r5,r29
    bctrl
    addi    r3,r31,212
    mr      r4,r29
    bl      ext_02411040
    lwz     r12,12(r1)
    lwz     r11,112(r31)
    stw     r12,8(r1)
    lwz     r0,204(r11)
    mtctr   r0
    mr      r3,r31
    mr      r5,r29
    addi    r4,r1,8
    bctrl
    lwz     r5,12(r28)
    lwz     r6,36(r5)
    mtctr   r6
    mr      r3,r28
    bctrl
    lmw     r27,28(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
