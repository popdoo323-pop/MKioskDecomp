# Converted from the disassembly of 0x024bc1c4 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc1c4
Batch_024bc1c4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_024bbefc
    mr      r3,r31
    bl      ext_024bc044
    mr      r3,r31
    bl      ext_024bc0c0
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
