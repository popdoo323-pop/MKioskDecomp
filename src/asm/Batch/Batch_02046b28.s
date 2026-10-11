# Converted from the disassembly of 0x02046b28 (28 bytes). Name is a placeholder.
    .text
    .globl Batch_02046b28
Batch_02046b28:
    li      r0,1
    cmpwi   r4,0
    stb     r0,16(r3)
    bnelr-
    lfs     f0,12(r3)
    stfs    f0,8(r3)
    blr
