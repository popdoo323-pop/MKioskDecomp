# Converted from the disassembly of 0x020455cc (24 bytes). Name is a placeholder.
    .text
    .globl Batch_020455cc
Batch_020455cc:
    li      r11,1
    lhz     r12,92(r3)
    slw     r0,r11,r4
    or      r12,r12,r0
    sth     r12,92(r3)
    blr
