# Converted from the disassembly of 0x0201d1d4 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_0201d1d4
Batch_0201d1d4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020150ac
    lwz     r12,52(r31)
    stw     r3,56(r31)
    lwz     r12,60(r12)
    lwz     r12,88(r12)
    stw     r12,64(r31)
    lwz     r0,80(r12)
    stw     r0,68(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
