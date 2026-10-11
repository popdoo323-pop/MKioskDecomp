# Converted from the disassembly of 0x02038dd8 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02038dd8
Batch_02038dd8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r5
    addi    r3,r3,4
    stw     r0,20(r1)
    bl      ext_02598144
    mr      r5,r31
    li      r4,0
    bl      ext_0259bf54
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
