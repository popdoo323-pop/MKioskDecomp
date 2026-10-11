# Converted from the disassembly of 0x02046664 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_02046664
Batch_02046664:
    fcmpu   cr0,f2,f3
    bne-    L02046680
    lis     r12,4096
    fadds   f8,f4,f5
    lfs     f13,23356(r12)
    fmuls   f1,f8,f13
    blr
L02046680:
    fsubs   f10,f2,f3
    lis     r12,4096
    fmuls   f7,f2,f5
    lfs     f0,23348(r12)
    fsubs   f12,f4,f5
    fdivs   f0,f0,f10
    fnmsubs f9,f3,f4,f7
    fmuls   f13,f1,f12
    fmuls   f11,f9,f0
    fmadds  f1,f13,f0,f11
    blr
