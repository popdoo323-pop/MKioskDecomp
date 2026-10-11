# Converted from the disassembly of 0x024b27d0 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_024b27d0
Batch_024b27d0:
    lbz     r12,234(r3)
    cmpwi   r12,0
    li      r0,0
    beq-    L024b27f0
    lwz     r12,240(r3)
    cmpwi   r12,0
    ble-    L024b27f0
    li      r0,1
L024b27f0:
    clrlwi  r3,r0,24
    blr
