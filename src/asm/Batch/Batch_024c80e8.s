# Converted from the disassembly of 0x024c80e8 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_024c80e8
Batch_024c80e8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r12,20(r4)
    cmpwi   r12,0
    mr      r30,r3
    bne-    L024c817c
    lis     r12,4117
    lwz     r12,3660(r12)
    lwz     r10,28(r4)
    lwz     r0,52(r12)
    and.    r0,r10,r0
    beq-    L024c814c
    li      r31,2
    mr      r3,r30
    addi    r4,r1,8
    stw     r31,8(r1)
    bl      ext_024c7f7c
    addi    r4,r1,8
    mr      r3,r30
    stw     r31,8(r1)
    bl      ext_024c7fcc
    b       L024c817c
L024c814c:
    lwz     r0,56(r12)
    and.    r0,r10,r0
    beq-    L024c817c
    li      r31,3
    mr      r3,r30
    addi    r4,r1,12
    stw     r31,12(r1)
    bl      ext_024c7f7c
    addi    r4,r1,12
    mr      r3,r30
    stw     r31,12(r1)
    bl      ext_024c7fcc
L024c817c:
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
