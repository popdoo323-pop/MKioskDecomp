# Converted from the disassembly of 0x02000c64 (372 bytes). Name is a placeholder.
    .text
    .globl Batch_02000c64
Batch_02000c64:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    mr      r31,r3
    stw     r4,112(r3)
    bl      ext_020007b4
    lbz     r9,39(r31)
    cmpwi   r9,0
    beq-    L02000d4c
    lbz     r7,38(r31)
    lwz     r11,60(r31)
    slwi    r0,r7,3
    add     r9,r11,r0
    lha     r0,2(r9)
    cmpwi   r0,0
    beq-    L02000ce8
    lwz     r12,48(r31)
    cmpwi   r0,0
    lha     r7,0(r9)
    add     r3,r12,r7
    bge-    L02000ccc
    lwz     r9,4(r9)
    mtctr   r9
    bctrl
    b       L02000ce8
L02000ccc:
    lha     r8,6(r9)
    lwzx    r10,r3,r8
    slwi    r9,r0,3
    add     r8,r10,r9
    lwz     r9,4(r8)
    mtctr   r9
    bctrl
L02000ce8:
    lbz     r8,37(r31)
    lwz     r12,52(r31)
    slwi    r8,r8,3
    li      r0,0
    add     r9,r12,r8
    stb     r0,39(r31)
    lha     r10,2(r9)
    cmpwi   r10,0
    beq-    L02000d54
    lwz     r7,48(r31)
    cmpwi   r10,0
    lha     r8,0(r9)
    add     r3,r7,r8
    bge-    L02000d30
    lwz     r0,4(r9)
    mtctr   r0
    bctrl
    b       L02000d4c
L02000d30:
    lha     r9,6(r9)
    lwzx    r11,r3,r9
    slwi    r0,r10,3
    add     r10,r11,r0
    lwz     r0,4(r10)
    mtctr   r0
    bctrl
L02000d4c:
    lbz     r8,37(r31)
    slwi    r8,r8,3
L02000d54:
    lwz     r12,56(r31)
    add     r11,r12,r8
    lha     r12,2(r11)
    cmpwi   r12,0
    beq-    L02000da8
    lwz     r7,48(r31)
    cmpwi   r12,0
    lha     r8,0(r11)
    add     r3,r7,r8
    bge-    L02000d8c
    lwz     r0,4(r11)
    mtctr   r0
    bctrl
    b       L02000da8
L02000d8c:
    lha     r9,6(r11)
    lwzx    r11,r3,r9
    slwi    r0,r12,3
    add     r12,r11,r0
    lwz     r0,4(r12)
    mtctr   r0
    bctrl
L02000da8:
    lwz     r12,40(r31)
    addi    r12,r12,1
    mr      r3,r31
    stw     r12,40(r31)
    bl      ext_02000858
    mr      r3,r31
    bl      ext_02000be4
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
