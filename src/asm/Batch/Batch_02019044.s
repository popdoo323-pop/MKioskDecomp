# Converted from the disassembly of 0x02019044 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_02019044
Batch_02019044:
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r0,424(r12)
    cmpwi   r0,4
    li      r0,3
    beq-    L02019060
    lwz     r0,264(r3)
L02019060:
    mr      r3,r0
    blr
