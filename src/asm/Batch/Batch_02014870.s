# Converted from the disassembly of 0x02014870 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_02014870
Batch_02014870:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02013810
    mr      r3,r31
    bl      ext_020144b8
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
