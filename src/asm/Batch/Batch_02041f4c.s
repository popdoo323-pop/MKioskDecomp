# Converted from the disassembly of 0x02041f4c (28 bytes). Name is a placeholder.
    .text
    .globl Batch_02041f4c
Batch_02041f4c:
    lwz     r3,312(r3)
    cmpwi   r3,0
    beqlr-
    lwz     r12,0(r3)
    lwz     r0,252(r12)
    mtctr   r0
    bctr
