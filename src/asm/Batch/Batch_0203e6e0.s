# Converted from the disassembly of 0x0203e6e0 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e6e0
Batch_0203e6e0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0203ae58
    lis     r12,4120
    lfs     f11,156(r31)
    lfs     f0,-10596(r12)
    lis     r12,4096
    lwz     r0,20(r1)
    fmuls   f10,f1,f11
    lfs     f12,164(r31)
    mtlr    r0
    lfs     f13,19508(r12)
    fnmsubs f12,f12,f0,f13
    lwz     r31,12(r1)
    addi    r1,r1,16
    fmuls   f1,f10,f12
    blr
