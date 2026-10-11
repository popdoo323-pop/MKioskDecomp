# Converted from the disassembly of 0x0201eb94 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_0201eb94
Batch_0201eb94:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,76(r3)
    lwz     r3,52(r3)
    lwz     r31,0(r12)
    bl      ext_02015194
    lhz     r5,134(r31)
    lhz     r4,132(r31)
    bl      ext_020062f0
    lis     r12,4120
    lfs     f13,28(r3)
    lfs     f0,-13680(r12)
    fcmpu   cr0,f13,f0
    mfcr    r0
    srwi    r3,r0,31
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
