# Converted from the disassembly of 0x024c6e74 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6e74
Batch_024c6e74:
    cmpwi   r4,1
    li      r0,1
    beq-    L024c6e8c
    cmpwi   r4,0
    beq-    L024c6e8c
    li      r0,0
L024c6e8c:
    clrlwi  r3,r0,24
    blr
