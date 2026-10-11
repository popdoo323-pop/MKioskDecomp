# Converted from the disassembly of 0x0202f548 (392 bytes). Name is a placeholder.
    .text
    .globl Batch_0202f548
Batch_0202f548:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r30,8(r1)
    stw     r0,20(r1)
    bl      ext_020150bc
    cmpwi   r3,0
    beq-    L0202f6b8
    lwz     r6,40(r31)
    lbz     r30,64(r31)
    addi    r6,r6,1
    lbz     r7,39(r31)
    stw     r6,40(r31)
    cmpwi   r7,0
    lbz     r12,37(r31)
    beq-    L0202f660
    lwz     r9,60(r31)
    slwi    r0,r12,3
    add     r9,r9,r0
    lha     r0,2(r9)
    cmpwi   r0,0
    beq-    L0202f5ec
    lwz     r10,48(r31)
    cmpwi   r0,0
    lha     r11,0(r9)
    add     r3,r10,r11
    bge-    L0202f5cc
    lwz     r0,4(r9)
    mtctr   r0
    bctrl
    lbz     r12,37(r31)
    b       L0202f5ec
L0202f5cc:
    lha     r12,6(r9)
    lwzx    r6,r3,r12
    slwi    r0,r0,3
    add     r12,r6,r0
    lwz     r0,4(r12)
    mtctr   r0
    bctrl
    lbz     r12,37(r31)
L0202f5ec:
    lwz     r9,52(r31)
    li      r7,0
    stb     r12,38(r31)
    rlwinm  r11,r30,3,21,28
    stb     r30,37(r31)
    add     r12,r9,r11
    stb     r7,39(r31)
    stw     r7,40(r31)
    lha     r0,2(r12)
    cmpwi   r0,0
    beq-    L0202f664
    lwz     r10,48(r31)
    cmpwi   r0,0
    lha     r11,0(r12)
    add     r3,r10,r11
    bge-    L0202f640
    lwz     r8,4(r12)
    mtctr   r8
    bctrl
    lbz     r12,37(r31)
    b       L0202f660
L0202f640:
    lha     r12,6(r12)
    lwzx    r6,r3,r12
    slwi    r0,r0,3
    add     r7,r6,r0
    lwz     r8,4(r7)
    mtctr   r8
    bctrl
    lbz     r12,37(r31)
L0202f660:
    slwi    r11,r12,3
L0202f664:
    lwz     r7,56(r31)
    add     r6,r7,r11
    lha     r7,2(r6)
    cmpwi   r7,0
    beq-    L0202f6b8
    lwz     r8,48(r31)
    cmpwi   r7,0
    lha     r9,0(r6)
    add     r3,r8,r9
    bge-    L0202f69c
    lwz     r0,4(r6)
    mtctr   r0
    bctrl
    b       L0202f6b8
L0202f69c:
    lha     r10,6(r6)
    lwzx    r12,r3,r10
    slwi    r0,r7,3
    add     r9,r12,r0
    lwz     r0,4(r9)
    mtctr   r0
    bctrl
L0202f6b8:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
