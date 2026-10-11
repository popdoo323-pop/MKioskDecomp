# Converted from the disassembly of 0x0200a08c (112 bytes). Name is a placeholder.
    .text
    .globl Batch_0200a08c
Batch_0200a08c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r3,104(r3)
    bl      ext_0200b2e4
    cmpwi   r3,0
    beq-    L0200a0e8
    lwz     r0,0(r3)
    xori    r0,r0,3
    cntlzw  r12,r0
    srwi.   r12,r12,5
    li      r0,0
    beq-    L0200a0d4
    lbz     r12,14(r3)
    extsb   r12,r12
    cmpwi   r12,-1
    beq-    L0200a0d4
    li      r0,1
L0200a0d4:
    clrlwi  r3,r0,24
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
L0200a0e8:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,0
    blr
