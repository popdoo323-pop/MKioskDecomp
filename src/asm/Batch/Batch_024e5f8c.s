# Converted from the disassembly of 0x024e5f8c (40 bytes). Name is a placeholder.
    .text
    .globl Batch_024e5f8c
Batch_024e5f8c:
    lwz     r0,76(r3)
    cmpwi   r0,2
    li      r0,1
    ble-    L024e5fac
    lwz     r12,76(r3)
    cmpwi   r12,7
    bge-    L024e5fac
    li      r0,0
L024e5fac:
    clrlwi  r3,r0,24
    blr
