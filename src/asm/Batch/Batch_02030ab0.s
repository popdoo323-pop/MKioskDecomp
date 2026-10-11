# Converted from the disassembly of 0x02030ab0 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_02030ab0
Batch_02030ab0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,84(r31)
    bl      ext_0218641c
    stw     r3,120(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
