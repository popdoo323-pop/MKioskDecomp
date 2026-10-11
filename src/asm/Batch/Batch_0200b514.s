# Converted from the disassembly of 0x0200b514 (208 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b514
Batch_0200b514:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r7,84(r3)
    cmpwi   r7,253
    beq-    L0200b54c
    lbz     r8,92(r3)
    extsb   r8,r8
    cmpwi   r8,-1
    beq-    L0200b54c
    lbz     r9,93(r3)
    extsb   r9,r9
    cmpwi   r9,-1
    bne-    L0200b55c
L0200b54c:
    lwz     r9,0(r4)
    cmpwi   r9,253
    bne-    L0200b5a4
    b       L0200b5b0
L0200b55c:
    lwz     r9,0(r4)
    cmplw   r9,r7
    bne-    L0200b59c
    lbz     r10,4(r4)
    lbz     r11,88(r3)
    cmplw   r10,r11
    bne-    L0200b59c
    lbz     r12,5(r4)
    lbz     r0,89(r3)
    cmplw   r12,r0
    bne-    L0200b59c
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,1
    blr
L0200b59c:
    cmpwi   r9,253
    beq-    L0200b5b0
L0200b5a4:
    bl      ext_0200abdc
    cmpwi   r3,0
    bne-    L0200b5c4
L0200b5b0:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,0
    blr
L0200b5c4:
    lwz     r7,0(r3)
    xori    r0,r7,2
    cntlzw  r0,r0
    srwi    r3,r0,5
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
