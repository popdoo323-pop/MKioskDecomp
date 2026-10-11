# Converted from the disassembly of 0x0201528c (36 bytes). Name is a placeholder.
    .text
    .globl Batch_0201528c
Batch_0201528c:
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r12,568(r12)
    lwz     r0,36(r12)
    li      r3,-1
    cmpwi   r0,6
    bnelr-
    lwz     r3,48(r12)
    blr
