# Converted from the disassembly of 0x0204642c (28 bytes). Name is a placeholder.
    .text
    .globl Batch_0204642c
Batch_0204642c:
    lis     r12,4117
    lwz     r12,-28988(r12)
    li      r3,0
    cmpwi   r12,0
    beqlr-
    mr      r3,r12
    b       ext_0205c408
