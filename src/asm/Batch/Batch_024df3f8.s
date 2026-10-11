# Converted from the disassembly of 0x024df3f8 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_024df3f8
Batch_024df3f8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    stw     r0,20(r1)
    stb     r31,1448(r3)
    bl      ext_0233b990
    cmpwi   r31,0
    beq-    L024df43c
    li      r12,0
    stw     r12,1100(r3)
    lwz     r0,1100(r3)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024df43c:
    li      r12,1
    stw     r12,1100(r3)
    lwz     r0,1100(r3)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
