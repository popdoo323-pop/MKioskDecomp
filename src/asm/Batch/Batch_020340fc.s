# Converted from the disassembly of 0x020340fc (36 bytes). Name is a placeholder.
    .text
    .globl Batch_020340fc
Batch_020340fc:
    cmpwi   r4,0
    bne-    L0203410c
    lwz     r3,20(r3)
    blr
L0203410c:
    mulli   r0,r4,136
    lwz     r12,56(r3)
    add     r12,r12,r0
    addi    r3,r12,-136
    blr
