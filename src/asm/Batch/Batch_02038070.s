# Converted from the disassembly of 0x02038070 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_02038070
Batch_02038070:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lbz     r0,550(r3)
    cmpwi   r0,0
    beq-    L0203809c
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,128
    blr
L0203809c:
    bl      ext_026324b4
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
