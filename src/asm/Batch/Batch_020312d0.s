# Converted from the disassembly of 0x020312d0 (28 bytes). Name is a placeholder.
    .text
    .globl Batch_020312d0
Batch_020312d0:
    lis     r12,4120
    lwz     r0,152(r3)
    lwz     r12,-12356(r12)
    xor     r12,r0,r12
    cntlzw  r0,r12
    srwi    r3,r0,5
    blr
