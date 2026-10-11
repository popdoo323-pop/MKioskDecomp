# Converted from the disassembly of 0x02007218 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_02007218
Batch_02007218:
    lis     r12,4120
    lwz     r0,528(r3)
    lwz     r12,-15404(r12)
    cmpw    r0,r12
    mfcr    r0
    srwi    r3,r0,31
    xori    r3,r3,1
    blr
