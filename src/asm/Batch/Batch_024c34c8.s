# Converted from the disassembly of 0x024c34c8 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_024c34c8
Batch_024c34c8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,32(r31)
    li      r4,1
    li      r5,0
    lwz     r3,0(r12)
    mr      r6,r4
    bl      ext_0247faa4
    li      r0,0
    stb     r0,96(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
