# Converted from the disassembly of 0x024b50f8 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_024b50f8
Batch_024b50f8:
    lwz     r12,96(r3)
    cmpwi   r12,0
    beq-    L024b5110
    stfs    f1,264(r12)
    lis     r12,4107
    lfs     f1,-32120(r12)
L024b5110:
    stfs    f1,100(r3)
    blr
