# Converted from the disassembly of 0x0202f8c4 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_0202f8c4
Batch_0202f8c4:
    lis     r11,4120
    lis     r12,4120
    lwz     r11,-12528(r11)
    lwz     r12,-12536(r12)
    lwz     r0,96(r3)
    add     r11,r12,r11
    xor     r12,r0,r11
    cntlzw  r0,r12
    srwi    r3,r0,5
    blr
