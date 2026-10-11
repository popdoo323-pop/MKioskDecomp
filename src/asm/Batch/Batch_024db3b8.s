# Converted from the disassembly of 0x024db3b8 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_024db3b8
Batch_024db3b8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,380(r31)
    bl      ext_020d943c
    lwz     r3,384(r31)
    bl      ext_020d943c
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
