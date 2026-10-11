# Converted from the disassembly of 0x020289f4 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_020289f4
Batch_020289f4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020150ac
    stw     r3,80(r31)
    lwz     r12,60(r3)
    lwz     r0,0(r12)
    stw     r0,276(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
