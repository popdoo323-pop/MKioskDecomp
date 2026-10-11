# Converted from the disassembly of 0x020315c8 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_020315c8
Batch_020315c8:
    cmpwi   r4,6
    lwz     r12,88(r3)
    bne-    L020315d8
    li      r4,-1
L020315d8:
    stw     r4,84(r12)
    blr
