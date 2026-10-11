# Converted from the disassembly of 0x02006040 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_02006040
Batch_02006040:
    slwi    r0,r5,2
    lfsx    f0,r4,r0
    add     r12,r4,r0
    stfs    f0,0(r3)
    lfs     f0,16(r12)
    stfs    f0,4(r3)
    lfs     f0,32(r12)
    stfs    f0,8(r3)
    blr
