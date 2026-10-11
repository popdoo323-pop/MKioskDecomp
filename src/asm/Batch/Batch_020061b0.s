# Converted from the disassembly of 0x020061b0 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_020061b0
Batch_020061b0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0270ca78
    li      r0,24
    stw     r0,444(r31)
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
