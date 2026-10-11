# Converted from the disassembly of 0x020315e0 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_020315e0
Batch_020315e0:
    lwz     r12,88(r3)
    lwz     r3,84(r12)
    cmpwi   r3,-1
    bnelr-
    li      r3,6
    blr
