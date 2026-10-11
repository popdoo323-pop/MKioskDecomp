# Converted from the disassembly of 0x024d9644 (28 bytes). Name is a placeholder.
    .text
    .globl Batch_024d9644
Batch_024d9644:
    lwz     r11,8(r3)
    lwz     r12,0(r3)
    slwi    r10,r11,1
    li      r0,0
    add     r12,r12,r10
    sth     r0,-2(r12)
    blr
