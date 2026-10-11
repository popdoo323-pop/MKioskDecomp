# Converted from the disassembly of 0x0202699c (24 bytes). Name is a placeholder.
    .text
    .globl Batch_0202699c
Batch_0202699c:
    lwz     r12,60(r3)
    lwz     r0,828(r12)
    xori    r0,r0,2
    cntlzw  r0,r0
    srwi    r3,r0,5
    blr
