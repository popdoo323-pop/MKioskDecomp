# Converted from the disassembly of 0x02024bcc (460 bytes). Name is a placeholder.
    .text
    .globl Batch_02024bcc
Batch_02024bcc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    lwz     r3,4(r30)
    stw     r31,0(r30)
    lha     r8,814(r31)
    stw     r8,8(r30)
    bl      ext_02015194
    lhz     r0,132(r31)
    lwz     r7,16(r3)
    mulli   r9,r0,76
    add     r11,r7,r9
    lwz     r12,12(r11)
    cmpwi   r12,0
    li      r7,0
    beq-    L02024c24
    lwz     r8,20(r11)
    lwz     r7,0(r8)
L02024c24:
    lbz     r0,816(r7)
    cmpwi   r0,0
    li      r0,0
    beq-    L02024c40
    lhz     r10,8(r11)
    addi    r0,r10,-1
    clrlwi  r0,r0,16
L02024c40:
    cmplw   r0,r12
    li      r10,0
    bge-    L02024c58
    lwz     r7,20(r11)
    slwi    r12,r0,2
    lwzx    r10,r12,r7
L02024c58:
    lha     r9,814(r10)
    xori    r10,r9,9
    lwz     r31,0(r30)
    cntlzw  r11,r10
    lwz     r3,4(r30)
    srwi    r8,r11,5
    stb     r8,16(r30)
    bl      ext_02015194
    lhz     r0,132(r31)
    mulli   r12,r0,76
    lwz     r8,16(r3)
    add     r8,r8,r12
    lwz     r0,12(r8)
    cmpwi   r0,0
    li      r9,0
    beq-    L02024ca0
    lwz     r9,20(r8)
    lwz     r9,0(r9)
L02024ca0:
    lbz     r11,816(r9)
    cmpwi   r11,0
    li      r12,0
    beq-    L02024cbc
    lhz     r12,8(r8)
    addi    r12,r12,-1
    clrlwi  r12,r12,16
L02024cbc:
    cmplw   r12,r0
    li      r3,0
    bge-    L02024cd4
    lwz     r9,20(r8)
    slwi    r7,r12,2
    lwzx    r3,r7,r9
L02024cd4:
    lwz     r10,820(r3)
    lwz     r11,20(r10)
    mtctr   r11
    bctrl
    xori    r0,r3,1
    lwz     r3,4(r30)
    cntlzw  r7,r0
    lwz     r31,0(r30)
    srwi    r12,r7,5
    stb     r12,17(r30)
    bl      ext_02015194
    lhz     r0,132(r31)
    lwz     r11,16(r3)
    mulli   r8,r0,76
    add     r9,r11,r8
    lwz     r0,12(r9)
    cmpwi   r0,0
    li      r11,0
    beq-    L02024d28
    lwz     r12,20(r9)
    lwz     r11,0(r12)
L02024d28:
    lbz     r7,816(r11)
    cmpwi   r7,0
    li      r11,0
    bne-    L02024d44
    lhz     r8,8(r9)
    addi    r11,r8,-1
    clrlwi  r11,r11,16
L02024d44:
    cmplw   r11,r0
    li      r3,0
    bge-    L02024d5c
    lwz     r0,20(r9)
    slwi    r10,r11,2
    lwzx    r3,r10,r0
L02024d5c:
    lwz     r12,820(r3)
    lwz     r7,20(r12)
    mtctr   r7
    bctrl
    xori    r8,r3,1
    cntlzw  r9,r8
    srwi    r10,r9,5
    xori    r10,r10,1
    stb     r10,18(r30)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
