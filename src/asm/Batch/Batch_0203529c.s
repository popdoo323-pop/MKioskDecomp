# Converted from the disassembly of 0x0203529c (24 bytes). Name is a placeholder.
    .text
    .globl Batch_0203529c
Batch_0203529c:
    cmpwi   r4,0
    bne-    L020352ac
    lis     r4,4120
    addi    r4,r4,-11828
L020352ac:
    stw     r4,1224(r3)
    blr
