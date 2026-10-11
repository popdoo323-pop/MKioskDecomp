# Converted from the disassembly of 0x0203fee0 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_0203fee0
Batch_0203fee0:
    cmpwi   r5,0
    li      r3,0
    beqlr-
    mulli   r0,r4,30
    divwu   r3,r0,r5
    blr
