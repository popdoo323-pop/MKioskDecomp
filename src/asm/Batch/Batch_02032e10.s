# Converted from the disassembly of 0x02032e10 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02032e10
Batch_02032e10:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r28,8(r1)
    stw     r31,20(r1)
    mr      r28,r3
    stw     r0,28(r1)
    lwz     r3,4(r28)
    mr      r30,r4
    bl      ext_02051068
    mr      r31,r3
    mr      r3,r28
    mr      r4,r31
    li      r29,0
    bl      ext_02032c7c
    cmpwi   r3,0
    beq-    L02032e70
    li      r6,0
    mr      r5,r30
    mr      r4,r31
    mr      r3,r28
    bl      ext_02032870
    mr      r29,r3
L02032e70:
    lwz     r28,8(r1)
    mr      r3,r29
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
