# Converted from the disassembly of 0x024e5fb4 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_024e5fb4
Batch_024e5fb4:
    lwz     r0,76(r3)
    cmpwi   r0,3
    bltlr-
    lwz     r0,76(r3)
    cmpwi   r0,4
    bgtlr-
    li      r11,1
    li      r12,0
    stb     r11,400(r3)
    addi    r4,r3,372
    stw     r12,128(r3)
    b       ext_0248d73c
