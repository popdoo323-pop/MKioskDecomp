# Converted from the disassembly of 0x02016190 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_02016190
Batch_02016190:
    lwz     r0,0(r3)
    cmplwi  r0,9
    li      r3,0
    beq-    L020161b0
    cmplwi  r0,13
    beq-    L020161b0
    cmplwi  r0,15
    bnelr-
L020161b0:
    li      r3,1
    blr
