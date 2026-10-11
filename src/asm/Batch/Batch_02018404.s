# Converted from the disassembly of 0x02018404 (52 bytes). Name is a placeholder.
    .text
    .globl Batch_02018404
Batch_02018404:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    bl      ext_020180f8
    lis     r12,4120
    lfs     f0,-13984(r12)
    fcmpu   cr0,f1,f0
    mfcr    r0
    srwi    r3,r0,31
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
