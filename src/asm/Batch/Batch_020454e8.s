# Converted from the disassembly of 0x020454e8 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_020454e8
Batch_020454e8:
    li      r11,1
    lhz     r12,88(r3)
    slw     r0,r11,r4
    or      r12,r12,r0
    sth     r12,88(r3)
    blr
