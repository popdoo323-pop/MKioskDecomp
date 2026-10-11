# Converted from the disassembly of 0x024c5ea8 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5ea8
Batch_024c5ea8:
    mflr    r0
    li      r9,2
    stwu    r1,-48(r1)
    li      r8,5
    stw     r9,16(r1)
    li      r12,4
    stw     r8,32(r1)
    stw     r12,28(r1)
    stw     r31,44(r1)
    li      r10,3
    stw     r0,52(r1)
    li      r0,0
    stw     r10,20(r1)
    stw     r0,12(r1)
    li      r9,6
    stw     r0,8(r1)
    li      r0,1
    li      r10,7
    stw     r0,24(r1)
    slwi    r0,r5,2
    stw     r9,36(r1)
    addi    r12,r1,8
    cmpwi   r4,0
    stw     r10,40(r1)
    add     r31,r12,r0
    bne-    L024c5f20
    li      r3,4
    bl      ext_0260128c
    mr.     r4,r3
    beq-    L024c5f28
L024c5f20:
    lwz     r12,0(r31)
    stw     r12,0(r4)
L024c5f28:
    lwz     r0,52(r1)
    lwz     r31,44(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
