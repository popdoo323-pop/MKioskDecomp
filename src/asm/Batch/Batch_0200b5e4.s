# Converted from the disassembly of 0x0200b5e4 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b5e4
Batch_0200b5e4:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lbz     r0,0(r4)
    extsb   r0,r0
    cmpwi   r0,-1
    beq-    L0200b60c
    bl      ext_0200ae34
    cmpwi   r3,0
    bne-    L0200b620
L0200b60c:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,0
    blr
L0200b620:
    lwz     r12,0(r3)
    xori    r11,r12,2
    cntlzw  r0,r11
    srwi    r3,r0,5
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
