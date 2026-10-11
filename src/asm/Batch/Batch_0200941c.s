# Converted from the disassembly of 0x0200941c (64 bytes). Name is a placeholder.
    .text
    .globl Batch_0200941c
Batch_0200941c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02398bf8
    cmpwi   r3,0
    beq-    L02009448
    lwz     r12,192(r31)
    addi    r12,r12,1
    stw     r12,192(r31)
L02009448:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
