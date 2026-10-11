# Converted from the disassembly of 0x020272e4 (44 bytes). Name is a placeholder.
    .text
    .globl Batch_020272e4
Batch_020272e4:
    lwz     r11,4(r3)
    lwz     r0,8(r3)
    cmpw    r11,r0
    bgelr-
    lwz     r10,12(r3)
    slwi    r12,r11,2
    stwx    r4,r12,r10
    lwz     r12,4(r3)
    addi    r12,r12,1
    stw     r12,4(r3)
    blr
