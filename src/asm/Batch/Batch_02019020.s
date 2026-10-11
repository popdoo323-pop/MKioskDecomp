# Converted from the disassembly of 0x02019020 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_02019020
Batch_02019020:
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r0,424(r12)
    cmpwi   r0,4
    li      r0,80
    beq-    L0201903c
    lwz     r0,260(r3)
L0201903c:
    mr      r3,r0
    blr
