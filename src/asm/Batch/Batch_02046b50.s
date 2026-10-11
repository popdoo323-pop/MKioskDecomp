# Converted from the disassembly of 0x02046b50 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_02046b50
Batch_02046b50:
    lis     r12,4096
    lfs     f0,23520(r12)
    lis     r12,4096
    fmuls   f0,f1,f0
    lfs     f13,23524(r12)
    fdivs   f0,f0,f13
    stfs    f0,4(r3)
    blr
