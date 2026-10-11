# Converted from the disassembly of 0x024dfd48 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_024dfd48
Batch_024dfd48:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    stw     r4,212(r31)
    lwz     r12,212(r31)
    lwz     r3,200(r31)
    addi    r4,r1,8
    stw     r12,8(r1)
    bl      ext_024c51a8
    lwz     r0,212(r31)
    lwz     r3,204(r31)
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_024c51a8
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
