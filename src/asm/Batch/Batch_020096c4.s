# Converted from the disassembly of 0x020096c4 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_020096c4
Batch_020096c4:
    lis     r12,4119
    stwu    r1,-24(r1)
    lwz     r12,-4780(r12)
    lwz     r11,16(r12)
    lwz     r0,4(r11)
    stw     r0,8(r1)
    lwz     r0,8(r11)
    lwz     r3,8(r1)
    stw     r0,12(r1)
    lwz     r4,12(r1)
    addi    r1,r1,24
    blr
