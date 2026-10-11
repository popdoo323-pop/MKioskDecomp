# Converted from the disassembly of 0x024c22c0 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_024c22c0
Batch_024c22c0:
    lwz     r0,28(r3)
    cmpwi   r4,0
    lwz     r12,32(r3)
    beq-    L024c22f0
    cmplwi  r0,1
    ble-    L024c22dc
    addi    r12,r12,4
L024c22dc:
    lis     r11,4107
    lwz     r3,0(r12)
    lfs     f1,-26364(r11)
    li      r4,0
    b       ext_0247f968
L024c22f0:
    cmplwi  r0,1
    ble-    L024c22fc
    addi    r12,r12,4
L024c22fc:
    lis     r11,4107
    lwz     r3,0(r12)
    lfs     f1,-26360(r11)
    li      r4,0
    b       ext_0247f968
