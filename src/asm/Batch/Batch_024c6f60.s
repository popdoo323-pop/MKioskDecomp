# Converted from the disassembly of 0x024c6f60 (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6f60
Batch_024c6f60:
    mflr    r0
    li      r10,2
    stwu    r1,-32(r1)
    stw     r10,24(r1)
    cmpwi   r4,0
    li      r8,0
    stw     r8,16(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    li      r0,1
    slwi    r11,r5,2
    stw     r0,8(r1)
    addi    r12,r1,8
    stw     r0,12(r1)
    add     r31,r12,r11
    stw     r0,20(r1)
    bne-    L024c6fb4
    li      r3,4
    bl      ext_0260128c
    mr.     r4,r3
    beq-    L024c6fbc
L024c6fb4:
    lwz     r0,0(r31)
    stw     r0,0(r4)
L024c6fbc:
    lwz     r0,36(r1)
    lwz     r31,28(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
