# Converted from the disassembly of 0x020109a0 (360 bytes). Name is a placeholder.
    .text
    .globl Batch_020109a0
Batch_020109a0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r9,39(r31)
    cmpwi   r9,0
    stw     r4,68(r31)
    beq-    L02010a84
    lbz     r7,38(r31)
    lwz     r11,60(r31)
    slwi    r0,r7,3
    add     r9,r11,r0
    lha     r0,2(r9)
    cmpwi   r0,0
    beq-    L02010a20
    lwz     r12,48(r31)
    cmpwi   r0,0
    lha     r7,0(r9)
    add     r3,r12,r7
    bge-    L02010a04
    lwz     r9,4(r9)
    mtctr   r9
    bctrl
    b       L02010a20
L02010a04:
    lha     r8,6(r9)
    lwzx    r10,r3,r8
    slwi    r9,r0,3
    add     r8,r10,r9
    lwz     r9,4(r8)
    mtctr   r9
    bctrl
L02010a20:
    lbz     r8,37(r31)
    lwz     r12,52(r31)
    slwi    r8,r8,3
    li      r0,0
    add     r9,r12,r8
    stb     r0,39(r31)
    lha     r10,2(r9)
    cmpwi   r10,0
    beq-    L02010a8c
    lwz     r7,48(r31)
    cmpwi   r10,0
    lha     r8,0(r9)
    add     r3,r7,r8
    bge-    L02010a68
    lwz     r0,4(r9)
    mtctr   r0
    bctrl
    b       L02010a84
L02010a68:
    lha     r9,6(r9)
    lwzx    r11,r3,r9
    slwi    r0,r10,3
    add     r10,r11,r0
    lwz     r0,4(r10)
    mtctr   r0
    bctrl
L02010a84:
    lbz     r8,37(r31)
    slwi    r8,r8,3
L02010a8c:
    lwz     r12,56(r31)
    add     r11,r12,r8
    lha     r12,2(r11)
    cmpwi   r12,0
    beq-    L02010ae0
    lwz     r7,48(r31)
    cmpwi   r12,0
    lha     r8,0(r11)
    add     r3,r7,r8
    bge-    L02010ac4
    lwz     r0,4(r11)
    mtctr   r0
    bctrl
    b       L02010ae0
L02010ac4:
    lha     r9,6(r11)
    lwzx    r11,r3,r9
    slwi    r0,r12,3
    add     r12,r11,r0
    lwz     r0,4(r12)
    mtctr   r0
    bctrl
L02010ae0:
    lwz     r12,40(r31)
    addi    r12,r12,1
    mr      r3,r31
    stw     r12,40(r31)
    bl      ext_02010870
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
