# Converted from the disassembly of 0x024b3568 (292 bytes). Name is a placeholder.
    .text
    .globl Batch_024b3568
Batch_024b3568:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lwz     r10,228(r31)
    cmpwi   r10,0
    bne-    L024b3618
    lwz     r30,0(r31)
    lwz     r0,124(r30)
    mtctr   r0
    mr      r3,r31
    bctrl
    lwz     r0,132(r30)
    mr      r29,r3
    mtctr   r0
    mr      r3,r31
    bctrl
    lwz     r0,140(r30)
    add     r30,r29,r3
    mtctr   r0
    mr      r3,r31
    bctrl
    add.    r30,r30,r3
    ble-    L024b3618
    lis     r3,4117
    lwz     r3,9820(r3)
    bl      ext_0261c858
    lwz     r8,12(r3)
    lwz     r9,52(r8)
    mtctr   r9
    li      r5,4
    mulli   r4,r30,44
    bctrl
    cmpwi   r30,0
    mr      r12,r30
    bgt-    L024b3608
    li      r12,1
L024b3608:
    cmpwi   r3,0
    beq-    L024b3618
    stw     r3,228(r31)
    stw     r30,224(r31)
L024b3618:
    li      r4,0
    lbz     r6,816(r31)
    addi    r5,r1,8
    mr      r3,r31
    stw     r4,8(r1)
    bl      ext_024b2fbc
    lbz     r5,816(r31)
    mr      r3,r31
    li      r4,1
    xori    r0,r5,1
    addi    r5,r1,8
    clrlwi  r6,r0,24
    bl      ext_024b2fbc
    lbz     r6,816(r31)
    mr      r3,r31
    li      r4,2
    addi    r5,r1,8
    bl      ext_024b2fbc
    mr      r3,r31
    bl      ext_024799e8
    mr      r3,r31
    bl      ext_02479cb8
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
