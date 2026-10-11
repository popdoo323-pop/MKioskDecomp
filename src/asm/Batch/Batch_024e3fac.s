# Converted from the disassembly of 0x024e3fac (156 bytes). Name is a placeholder.
    .text
    .globl Batch_024e3fac
Batch_024e3fac:
    mflr    r0
    stwu    r1,-96(r1)
    stw     r29,84(r1)
    stw     r30,88(r1)
    stw     r31,92(r1)
    stw     r0,100(r1)
    li      r29,0
    stw     r29,72(r1)
    stw     r29,68(r1)
    mr      r31,r4
    stw     r29,16(r1)
    mr      r30,r3
    stw     r29,60(r1)
    addi    r3,r1,12
    stw     r29,24(r1)
    bl      ext_024dbfc0
    lbz     r0,204(r30)
    cmpwi   r0,0
    li      r0,3
    beq-    L024e4000
    li      r0,4
L024e4000:
    li      r6,7001
    addi    r3,r1,12
    addi    r4,r1,8
    li      r5,5305
    stw     r0,8(r1)
    bl      ext_024dc030
    addi    r5,r1,12
    stw     r29,20(r1)
    mr      r4,r31
    mr      r3,r30
    bl      ext_0248e498
    lwz     r29,84(r1)
    lwz     r0,100(r1)
    lwz     r30,88(r1)
    mtlr    r0
    lwz     r31,92(r1)
    addi    r1,r1,96
    blr
