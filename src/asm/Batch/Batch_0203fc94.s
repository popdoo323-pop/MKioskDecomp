# Converted from the disassembly of 0x0203fc94 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_0203fc94
Batch_0203fc94:
    lwz     r11,0(r3)
    li      r0,0
    lwz     r12,8(r3)
    add     r12,r11,r12
    stb     r0,-1(r12)
    blr
