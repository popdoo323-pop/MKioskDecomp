# Converted from the disassembly of 0x024c2bd4 (32 bytes). Name is a placeholder.
    .text
    .globl Batch_024c2bd4
Batch_024c2bd4:
    lwz     r0,28(r3)
    cmplwi  r0,1
    lwz     r12,32(r3)
    ble-    L024c2be8
    addi    r12,r12,4
L024c2be8:
    lwz     r3,0(r12)
    li      r4,0
    b       ext_0247f968
