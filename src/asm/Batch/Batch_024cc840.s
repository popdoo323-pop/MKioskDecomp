# Converted from the disassembly of 0x024cc840 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_024cc840
Batch_024cc840:
    mflr    r0
    stw     r0,4(r1)
    mr      r0,r3
    stwu    r1,-16(r1)
    bl      ext_024cc740
    stw     r3,8(r1)
    mr      r3,r0
    stw     r4,12(r1)
    addi    r4,r1,8
    bl      ext_024cbcdc
    lwz     r0,20(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
