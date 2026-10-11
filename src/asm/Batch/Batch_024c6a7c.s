# Converted from the disassembly of 0x024c6a7c (184 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6a7c
Batch_024c6a7c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-80(r1)
    lbz     r0,84(r3)
    cmpwi   r0,0
    beq-    L024c6ae4
    li      r7,3
    lis     r12,4107
    addi    r6,r1,4
    mtctr   r7
    addi    r12,r12,-23232
L024c6aa8:
    lwz     r8,4(r12)
    stw     r8,4(r6)
    lwz     r9,8(r12)
    stw     r9,8(r6)
    lwzu    r11,12(r12)
    stwu    r11,12(r6)
    bdnz+   L024c6aa8
    slwi    r7,r4,2
    addi    r9,r1,8
    lwzx    r4,r7,r9
    bl      ext_024c5b3c
    lwz     r0,84(r1)
    mtlr    r0
    addi    r1,r1,80
    blr
L024c6ae4:
    li      r0,3
    lis     r10,4107
    addi    r12,r1,40
    mtctr   r0
    addi    r10,r10,-23196
L024c6af8:
    lwz     r11,4(r10)
    stw     r11,4(r12)
    lwz     r0,8(r10)
    stw     r0,8(r12)
    lwzu    r6,12(r10)
    stwu    r6,12(r12)
    bdnz+   L024c6af8
    slwi    r8,r4,2
    addi    r10,r1,44
    lwzx    r4,r8,r10
    bl      ext_024c5b3c
    lwz     r0,84(r1)
    mtlr    r0
    addi    r1,r1,80
    blr
