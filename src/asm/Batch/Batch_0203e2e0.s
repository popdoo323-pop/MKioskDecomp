# Converted from the disassembly of 0x0203e2e0 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e2e0
Batch_0203e2e0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0203d438
    mr      r3,r31
    bl      ext_0203d86c
    mr      r3,r31
    bl      ext_0203e1b8
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
