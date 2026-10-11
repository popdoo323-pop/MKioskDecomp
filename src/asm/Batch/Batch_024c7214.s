# Converted from the disassembly of 0x024c7214 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_024c7214
Batch_024c7214:
    mflr    r0
    li      r12,3
    li      r10,1
    stwu    r1,-40(r1)
    stw     r12,20(r1)
    stw     r10,12(r1)
    stw     r31,36(r1)
    stw     r30,32(r1)
    stw     r0,44(r1)
    li      r0,0
    lwz     r9,4(r3)
    stw     r0,8(r1)
    li      r0,2
    stw     r0,16(r1)
    li      r0,4
    stw     r0,24(r1)
    lwz     r10,28(r9)
    mtctr   r10
    mr      r31,r4
    bctrl
    slwi    r0,r3,2
    addi    r12,r1,8
    cmpwi   r31,0
    add     r30,r12,r0
    bne-    L024c7288
    li      r3,4
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024c7290
L024c7288:
    lwz     r12,0(r30)
    stw     r12,0(r31)
L024c7290:
    lwz     r0,44(r1)
    lwz     r30,32(r1)
    mtlr    r0
    lwz     r31,36(r1)
    addi    r1,r1,40
    blr
