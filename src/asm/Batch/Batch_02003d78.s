# Converted from the disassembly of 0x02003d78 (28 bytes). Name is a placeholder.
    .text
    .globl Batch_02003d78
Batch_02003d78:
    lis     r12,4120
    lwz     r0,344(r3)
    lwz     r12,-15736(r12)
    cmpw    r0,r12
    mfcr    r0
    rlwinm  r3,r0,2,31,31
    blr
