# Converted from the disassembly of 0x02016128 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_02016128
Batch_02016128:
    lwz     r0,0(r3)
    li      r3,0
    cmplwi  r0,17
    bltlr-
    cmplwi  r0,20
    bgtlr-
    li      r3,1
    blr
