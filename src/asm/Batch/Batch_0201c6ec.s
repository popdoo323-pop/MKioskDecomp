# Converted from the disassembly of 0x0201c6ec (24 bytes). Name is a placeholder.
    .text
    .globl Batch_0201c6ec
Batch_0201c6ec:
    lwz     r11,0(r3)
    li      r0,0
    lwz     r12,8(r3)
    add     r12,r11,r12
    stb     r0,-1(r12)
    blr
