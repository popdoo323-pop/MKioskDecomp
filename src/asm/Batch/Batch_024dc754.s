# Converted from the disassembly of 0x024dc754 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_024dc754
Batch_024dc754:
    lwz     r0,212(r3)
    cmpwi   r0,4
    beqlr-
    lis     r3,4107
    addi    r3,r3,-13164
    b       ext_02045d30
