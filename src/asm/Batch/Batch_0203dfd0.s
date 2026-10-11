# Converted from the disassembly of 0x0203dfd0 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0203dfd0
Batch_0203dfd0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4096
    lfs     f1,19504(r12)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0203dfb8
    lwz     r3,144(r31)
    bl      ext_02046b44
    lwz     r0,20(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
