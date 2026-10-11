# Converted from the disassembly of 0x024d88a8 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024d88a8
Batch_024d88a8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_024af7d0
    mr      r5,r3
    lwz     r4,88(r31)
    mr      r3,r31
    li      r6,0
    bl      ext_024806dc
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
