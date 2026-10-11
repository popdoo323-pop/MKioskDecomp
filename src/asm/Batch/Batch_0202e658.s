# Converted from the disassembly of 0x0202e658 (360 bytes). Name is a placeholder.
    .text
    .globl Batch_0202e658
Batch_0202e658:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020150bc
    cmpwi   r3,0
    beq-    L0202e7ac
    lbz     r9,55(r31)
    cmpwi   r9,0
    beq-    L0202e744
    lbz     r7,54(r31)
    lwz     r11,76(r31)
    slwi    r0,r7,3
    add     r9,r11,r0
    lha     r0,2(r9)
    cmpwi   r0,0
    beq-    L0202e6e0
    lwz     r12,64(r31)
    cmpwi   r0,0
    lha     r7,0(r9)
    add     r3,r12,r7
    bge-    L0202e6c4
    lwz     r9,4(r9)
    mtctr   r9
    bctrl
    b       L0202e6e0
L0202e6c4:
    lha     r8,6(r9)
    lwzx    r10,r3,r8
    slwi    r9,r0,3
    add     r8,r10,r9
    lwz     r9,4(r8)
    mtctr   r9
    bctrl
L0202e6e0:
    lbz     r8,53(r31)
    lwz     r12,68(r31)
    slwi    r8,r8,3
    li      r0,0
    add     r9,r12,r8
    stb     r0,55(r31)
    lha     r10,2(r9)
    cmpwi   r10,0
    beq-    L0202e74c
    lwz     r7,64(r31)
    cmpwi   r10,0
    lha     r8,0(r9)
    add     r3,r7,r8
    bge-    L0202e728
    lwz     r0,4(r9)
    mtctr   r0
    bctrl
    b       L0202e744
L0202e728:
    lha     r9,6(r9)
    lwzx    r11,r3,r9
    slwi    r0,r10,3
    add     r10,r11,r0
    lwz     r0,4(r10)
    mtctr   r0
    bctrl
L0202e744:
    lbz     r8,53(r31)
    slwi    r8,r8,3
L0202e74c:
    lwz     r12,72(r31)
    add     r11,r12,r8
    lha     r12,2(r11)
    cmpwi   r12,0
    beq-    L0202e7a0
    lwz     r7,64(r31)
    cmpwi   r12,0
    lha     r8,0(r11)
    add     r3,r7,r8
    bge-    L0202e784
    lwz     r0,4(r11)
    mtctr   r0
    bctrl
    b       L0202e7a0
L0202e784:
    lha     r9,6(r11)
    lwzx    r11,r3,r9
    slwi    r0,r12,3
    add     r12,r11,r0
    lwz     r0,4(r12)
    mtctr   r0
    bctrl
L0202e7a0:
    lwz     r12,56(r31)
    addi    r12,r12,1
    stw     r12,56(r31)
L0202e7ac:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
