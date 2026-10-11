# Converted from the disassembly of 0x024bfaf4 (44 bytes). Name is a placeholder.
    .text
    .globl Batch_024bfaf4
Batch_024bfaf4:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-24(r1)
    lwz     r0,0(r4)
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_024bfac0
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
