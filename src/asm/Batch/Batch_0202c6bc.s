# Converted from the disassembly of 0x0202c6bc (152 bytes). Name is a placeholder.
    .text
    .globl Batch_0202c6bc
Batch_0202c6bc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r28,8(r1)
    mr      r28,r3
    mr      r30,r5
    li      r31,0
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bl      ext_0202bd54
    cmpwi   r3,0
    beq-    L0202c6f8
    li      r31,1
L0202c6f8:
    mr      r5,r30
    mr      r4,r29
    mr      r3,r28
    bl      ext_0202c22c
    cmpwi   r3,0
    beq-    L0202c714
    li      r31,1
L0202c714:
    mr      r5,r30
    mr      r4,r29
    mr      r3,r28
    bl      ext_0202c484
    cmpwi   r3,0
    beq-    L0202c730
    li      r31,1
L0202c730:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
