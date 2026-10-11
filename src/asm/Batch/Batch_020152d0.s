# Converted from the disassembly of 0x020152d0 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_020152d0
Batch_020152d0:
    cmplwi  r3,1018
    beq-    L020152e0
    cmplwi  r3,1033
    bne-    L020152e8
L020152e0:
    li      r3,1
    blr
L020152e8:
    li      r3,0
    blr
