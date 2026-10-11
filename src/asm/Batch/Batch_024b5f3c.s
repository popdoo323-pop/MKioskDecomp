# Converted from the disassembly of 0x024b5f3c (60 bytes). Name is a placeholder.
    .text
    .globl Batch_024b5f3c
Batch_024b5f3c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4107
    lfs     f1,-32244(r12)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_024b4dac
    mr      r3,r31
    bl      ext_024b4f7c
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
