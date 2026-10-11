# Converted from the disassembly of 0x024e36f8 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024e36f8
Batch_024e36f8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    li      r5,1000
    stw     r0,20(r1)
    lwz     r4,200(r3)
    mr      r31,r3
    bl      ext_0248e3d4
    lwz     r0,184(r31)
    cntlzw  r0,r0
    srwi    r3,r0,5
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
