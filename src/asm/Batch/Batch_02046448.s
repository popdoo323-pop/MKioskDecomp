# Converted from the disassembly of 0x02046448 (28 bytes). Name is a placeholder.
    .text
    .globl Batch_02046448
Batch_02046448:
    lis     r12,4117
    lwz     r12,-28988(r12)
    cmpwi   r12,0
    beqlr-
    mr      r4,r3
    mr      r3,r12
    b       ext_0205c4bc
