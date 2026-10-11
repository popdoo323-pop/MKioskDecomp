# Converted from the disassembly of 0x024bc5cc (280 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc5cc
Batch_024bc5cc:
    mflr    r0
    stwu    r1,-72(r1)
    stw     r29,60(r1)
    stw     r30,64(r1)
    stw     r31,68(r1)
    mr      r30,r3
    stw     r0,76(r1)
    lwz     r8,224(r30)
    cmpwi   r8,0
    mr      r31,r4
    beq-    L024bc6c8
    li      r5,0
    li      r10,32
    stb     r5,55(r1)
    lis     r0,4107
    stb     r5,24(r1)
    addic   r0,r0,-30948
    stw     r10,20(r1)
    addi    r9,r1,24
    stw     r0,16(r1)
    stw     r9,12(r1)
    lwz     r5,0(r31)
    lwz     r12,84(r30)
    stw     r5,8(r1)
    lwz     r9,116(r12)
    mtctr   r9
    addi    r5,r1,12
    mr      r3,r30
    addi    r4,r1,8
    bctrl
    cmpwi   r3,0
    beq-    L024bc6c8
    lwz     r9,0(r31)
    li      r7,1
    slw     r0,r7,r9
    lhz     r10,240(r30)
    clrlwi  r0,r0,16
    and.    r8,r10,r0
    addi    r29,r30,228
    bne-    L024bc6b4
    lwz     r11,16(r1)
    lwz     r12,20(r11)
    mtctr   r12
    addi    r3,r1,12
    bctrl
    lwz     r4,12(r1)
    mr      r3,r30
    bl      ext_024bc520
    lwz     r0,0(r31)
    slwi    r8,r0,2
    stwx    r3,r8,r29
    lwz     r0,0(r31)
    li      r12,1
    slw     r6,r12,r0
    lhz     r0,240(r30)
    or      r0,r0,r6
    sth     r0,240(r30)
    lwz     r9,0(r31)
L024bc6b4:
    slwi    r7,r9,2
    lwzx    r3,r7,r29
    cmpwi   r3,-1
    beq-    L024bc6c8
    bl      ext_02045d6c
L024bc6c8:
    lwz     r29,60(r1)
    lwz     r0,76(r1)
    lwz     r30,64(r1)
    mtlr    r0
    lwz     r31,68(r1)
    addi    r1,r1,72
    blr
