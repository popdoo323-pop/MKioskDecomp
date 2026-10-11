# Converted from the disassembly of 0x02016168 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_02016168
Batch_02016168:
    lwz     r0,0(r3)
    cmplwi  r0,0
    li      r3,0
    beq-    L02016188
    cmplwi  r0,4
    beq-    L02016188
    cmplwi  r0,17
    bnelr-
L02016188:
    li      r3,1
    blr
