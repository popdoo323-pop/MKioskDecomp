# Converted from the disassembly of 0x02046630 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_02046630
Batch_02046630:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020465d8
    mr      r4,r31
    bl      ext_02635f94
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
