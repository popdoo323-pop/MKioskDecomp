# Converted from the disassembly of 0x02024b38 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_02024b38
Batch_02024b38:
    lis     r12,4096
    lfs     f0,10636(r12)
    li      r12,0
    stw     r12,8(r3)
    stfs    f0,12(r3)
    stb     r12,17(r3)
    stb     r12,18(r3)
    stb     r12,16(r3)
    stw     r12,0(r3)
    blr
