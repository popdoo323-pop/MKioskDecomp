# Converted from the disassembly of 0x024c64c4 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_024c64c4
Batch_024c64c4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r4
    li      r4,2464
    mr      r30,r3
    stw     r0,20(r1)
    bl      ext_024c5b3c
    mr      r4,r3
    addi    r3,r30,24
    bl      ext_0248c074
    lhz     r5,8(r31)
    addi    r3,r30,24
    li      r4,0
    bl      ext_0248c338
    lbz     r5,10(r31)
    addi    r3,r30,24
    li      r4,1
    bl      ext_0248c338
    lbz     r5,11(r31)
    addi    r3,r30,24
    li      r4,2
    bl      ext_0248c338
    addi    r3,r30,24
    bl      ext_0248c0c8
    lhz     r12,28(r30)
    cmpwi   r12,0
    addi    r3,r30,28
    bne-    L024c654c
    lwz     r0,24(r30)
    cmpwi   r0,0
    beq-    L024c654c
    mr      r3,r0
L024c654c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
