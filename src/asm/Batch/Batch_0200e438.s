# Converted from the disassembly of 0x0200e438 (196 bytes). Name is a placeholder.
    .text
    .globl Batch_0200e438
Batch_0200e438:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r8,100(r3)
    lwz     r9,228(r8)
    mtctr   r9
    lwz     r5,104(r3)
    addi    r30,r5,80
    mr      r29,r4
    mr      r28,r3
    li      r31,1
    bctrl
    cmpwi   r3,0
    beq-    L0200e4a0
    lwz     r10,100(r28)
    lwz     r0,140(r10)
    mtctr   r0
    mr      r3,r28
    mr      r4,r29
    bctrl
    cmpwi   r3,0
    beq-    L0200e4d8
L0200e4a0:
    lwz     r12,28(r30)
    lwz     r0,20(r12)
    mtctr   r0
    mr      r3,r30
    bctrl
    cmpwi   r3,0
    beq-    L0200e4d4
    lbz     r0,0(r29)
    lbz     r6,13(r30)
    extsb   r0,r0
    extsb   r6,r6
    cmplw   r6,r0
    beq-    L0200e4d8
L0200e4d4:
    li      r31,0
L0200e4d8:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    clrlwi  r3,r31,24
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
