# Converted from the disassembly of 0x02031cb0 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_02031cb0
Batch_02031cb0:
    lis     r12,4120
    lwz     r0,152(r3)
    lwz     r12,-12356(r12)
    cmpw    r0,r12
    mfcr    r0
    srwi    r3,r0,31
    xori    r3,r3,1
    blr
