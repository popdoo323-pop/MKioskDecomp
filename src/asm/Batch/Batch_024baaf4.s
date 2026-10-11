# Converted from the disassembly of 0x024baaf4 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_024baaf4
Batch_024baaf4:
    lis     r12,4117
    lwz     r12,-3252(r12)
    lwz     r3,60(r12)
    cmpwi   r3,0
    beqlr-
    lwz     r12,12(r3)
    lwz     r0,92(r12)
    mtctr   r0
    bctr
