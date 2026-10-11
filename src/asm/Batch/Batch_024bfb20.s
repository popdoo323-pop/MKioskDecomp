# Converted from the disassembly of 0x024bfb20 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_024bfb20
Batch_024bfb20:
    lwz     r12,0(r4)
    cmpwi   r12,2
    bne-    L024bfb54
    lwz     r0,28(r3)
    cmplwi  r0,3
    lwz     r12,32(r3)
    ble-    L024bfb40
    addi    r12,r12,12
L024bfb40:
    lwz     r3,0(r12)
    lis     r12,4107
    lfs     f1,-30668(r12)
    li      r4,0
    b       ext_0247f90c
L024bfb54:
    cmpwi   r12,3
    bnelr-
    lwz     r0,28(r3)
    cmplwi  r0,4
    lwz     r12,32(r3)
    ble-    L024bfb70
    addi    r12,r12,16
L024bfb70:
    lwz     r3,0(r12)
    lis     r12,4107
    lfs     f1,-30668(r12)
    li      r4,0
    b       ext_0247f90c
