# Converted from the disassembly of 0x02033884 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_02033884
Batch_02033884:
    lbz     r0,273(r3)
    cmpwi   r0,0
    beq-    L0203389c
    lis     r12,4120
    lfs     f1,-11844(r12)
    blr
L0203389c:
    lis     r12,4120
    lfs     f1,-11848(r12)
    blr
