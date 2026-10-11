# Converted from the disassembly of 0x024bb56c (32 bytes). Name is a placeholder.
    .text
    .globl Batch_024bb56c
Batch_024bb56c:
    lfs     f0,0(r4)
    stfs    f0,0(r3)
    lfs     f0,4(r4)
    stfs    f0,4(r3)
    lfs     f0,8(r4)
    stfs    f1,12(r3)
    stfs    f0,8(r3)
    blr
