# Converted from the disassembly of 0x024c5b3c (44 bytes). Name is a placeholder.
    .text
    .globl Batch_024c5b3c
Batch_024c5b3c:
    lis     r11,4117
    lwz     r11,3660(r11)
    lwz     r9,12(r11)
    lwz     r0,0(r9)
    cmplwi  r0,3
    lwz     r12,4(r9)
    ble-    L024c5b5c
    addi    r12,r12,12
L024c5b5c:
    lwz     r12,0(r12)
    lwz     r3,4(r12)
    b       ext_0248bd94
