# Converted from the disassembly of 0x02030d24 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_02030d24
Batch_02030d24:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02030ae4
    lwz     r3,68(r31)
    bl      ext_0201efb8
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
