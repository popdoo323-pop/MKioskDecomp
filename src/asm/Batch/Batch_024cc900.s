# Converted from the disassembly of 0x024cc900 (56 bytes). Name is a placeholder.
    .text
    .globl Batch_024cc900
Batch_024cc900:
    stw     r5,332(r3)
    or      r9,r4,r5
    stw     r4,328(r3)
    or      r10,r9,r6
    stw     r6,336(r3)
    li      r0,1
    or      r11,r10,r7
    stw     r7,340(r3)
    or      r12,r11,r8
    stb     r0,392(r3)
    addi    r4,r3,348
    stw     r8,344(r3)
    stw     r12,368(r3)
    b       ext_02484db0
