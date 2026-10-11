# Converted from the disassembly of 0x020152b0 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_020152b0
Batch_020152b0:
    cmplwi  r3,1013
    beq-    L020152c0
    cmplwi  r3,1034
    bne-    L020152c8
L020152c0:
    li      r3,1
    blr
L020152c8:
    li      r3,0
    blr
