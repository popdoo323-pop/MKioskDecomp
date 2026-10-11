# Converted from the disassembly of 0x020453a4 (44 bytes). Name is a placeholder.
    .text
    .globl Batch_020453a4
Batch_020453a4:
    li      r12,1
    slwi    r9,r4,2
    lhz     r10,90(r3)
    slw     r0,r12,r4
    li      r4,4
    or      r10,r10,r0
    addi    r11,r3,96
    sth     r10,90(r3)
    add     r3,r11,r9
    stwx    r5,r11,r9
    b       ext_029a9a78
