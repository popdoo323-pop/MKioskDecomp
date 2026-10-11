# Converted from the disassembly of 0x0201f7bc (48 bytes). Name is a placeholder.
    .text
    .globl Batch_0201f7bc
Batch_0201f7bc:
    lwz     r9,16(r3)
    slwi    r0,r4,5
    add     r10,r9,r0
    lwz     r11,12(r10)
    mr      r0,r5
    li      r3,0
    cmplw   r0,r11
    bgelr-
    lwz     r11,20(r10)
    slwi    r12,r0,2
    lwzx    r3,r12,r11
    blr
