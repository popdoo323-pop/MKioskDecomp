# Converted from the disassembly of 0x024c1d2c (32 bytes). Name is a placeholder.
    .text
    .globl Batch_024c1d2c
Batch_024c1d2c:
    lwz     r0,28(r3)
    cmplwi  r0,1
    lwz     r12,32(r3)
    ble-    L024c1d40
    addi    r12,r12,4
L024c1d40:
    lwz     r3,0(r12)
    li      r4,1
    b       ext_0247f968
