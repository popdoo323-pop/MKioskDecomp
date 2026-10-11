# Converted from the disassembly of 0x02016110 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_02016110
Batch_02016110:
    lwz     r0,0(r3)
    li      r3,0
    cmpwi   r0,11
    bnelr-
    li      r3,1
    blr
