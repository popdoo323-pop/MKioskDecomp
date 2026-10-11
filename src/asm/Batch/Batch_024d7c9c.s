# Converted from the disassembly of 0x024d7c9c (40 bytes). Name is a placeholder.
    .text
    .globl Batch_024d7c9c
Batch_024d7c9c:
    lwz     r11,32(r3)
    lwz     r12,0(r11)
    lwz     r0,4(r12)
    cmpwi   r0,1
    bnelr-
    li      r4,0
    lwz     r3,0(r11)
    li      r6,1
    mr      r5,r4
    b       ext_0247faa4
