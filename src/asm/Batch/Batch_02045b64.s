# Converted from the disassembly of 0x02045b64 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_02045b64
Batch_02045b64:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02045abc
    mr      r4,r31
    bl      ext_02592438
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
