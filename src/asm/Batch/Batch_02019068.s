# Converted from the disassembly of 0x02019068 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_02019068
Batch_02019068:
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r0,424(r12)
    cmpwi   r0,4
    li      r0,3
    beq-    L02019084
    lwz     r0,268(r3)
L02019084:
    mr      r3,r0
    blr
