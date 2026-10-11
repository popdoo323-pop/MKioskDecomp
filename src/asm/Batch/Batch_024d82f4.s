# Converted from the disassembly of 0x024d82f4 (20 bytes). Name is a placeholder.
    .text
    .globl Batch_024d82f4
Batch_024d82f4:
    lwz     r0,92(r3)
    xori    r0,r0,3
    cntlzw  r0,r0
    srwi    r3,r0,5
    blr
