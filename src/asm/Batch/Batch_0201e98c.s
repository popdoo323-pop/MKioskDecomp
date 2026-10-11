# Converted from the disassembly of 0x0201e98c (24 bytes). Name is a placeholder.
    .text
    .globl Batch_0201e98c
Batch_0201e98c:
    lwz     r12,60(r3)
    lwz     r12,44(r12)
    lwz     r12,0(r12)
    addic   r0,r12,-1
    subfe   r3,r0,r12
    blr
