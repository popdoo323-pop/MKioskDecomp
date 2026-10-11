# Converted from the disassembly of 0x024c2ef0 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024c2ef0
Batch_024c2ef0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,88(r3)
    cmpwi   r12,0
    beq-    L024c2f2c
    lwz     r12,32(r12)
    lwz     r31,0(r12)
    li      r4,0
    mr      r3,r31
    bl      ext_0247fc68
    li      r4,0
    mr      r3,r31
    bl      ext_0247f968
L024c2f2c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
