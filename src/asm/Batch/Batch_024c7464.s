# Converted from the disassembly of 0x024c7464 (268 bytes). Name is a placeholder.
    .text
    .globl Batch_024c7464
Batch_024c7464:
    mflr    r0
    stwu    r1,-64(r1)
    stw     r30,56(r1)
    mr      r30,r4
    cmplwi  r30,17
    stw     r31,60(r1)
    stw     r0,68(r1)
    blt-    L024c74a4
    lwz     r0,68(r1)
    lis     r3,4107
    lwz     r31,60(r1)
    mtlr    r0
    lwz     r30,56(r1)
    addi    r3,r3,-23076
    addi    r1,r1,64
    blr
L024c74a4:
    cmpwi   r30,12
    bne-    L024c74cc
    li      r4,9075
    bl      ext_024c5b3c
    lwz     r0,68(r1)
    lwz     r30,56(r1)
    mtlr    r0
    lwz     r31,60(r1)
    addi    r1,r1,64
    blr
L024c74cc:
    mr      r3,r30
    bl      ext_02398e80
    mr      r31,r3
    cmpwi   r31,-1
    bne-    L024c7528
    lis     r4,4107
    addi    r3,r1,8
    mr      r5,r30
    addi    r4,r4,-23056
    crclr   4*cr1+eq
    bl      ext_024c8c10
    lwz     r12,4(r3)
    lwz     r0,20(r12)
    mtctr   r0
    mr      r31,r3
    bctrl
    lwz     r0,68(r1)
    lwz     r3,0(r31)
    mtlr    r0
    lwz     r30,56(r1)
    lwz     r31,60(r1)
    addi    r1,r1,64
    blr
L024c7528:
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L024c7538
    lwz     r3,424(r3)
L024c7538:
    lwz     r0,52(r3)
    cmplw   r31,r0
    li      r12,0
    bge-    L024c7554
    lwz     r0,60(r3)
    slwi    r10,r31,2
    lwzx    r12,r10,r0
L024c7554:
    lwz     r0,68(r1)
    lwz     r30,56(r1)
    mtlr    r0
    lwz     r31,60(r1)
    addi    r1,r1,64
    addi    r3,r12,388
    blr
