# Converted from the disassembly of 0x024bfc80 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_024bfc80
Batch_024bfc80:
    lwz     r12,0(r4)
    cmpwi   r12,2
    bne-    L024bfcb4
    lwz     r0,28(r3)
    cmplwi  r0,3
    lwz     r12,32(r3)
    ble-    L024bfca0
    addi    r12,r12,12
L024bfca0:
    lwz     r3,0(r12)
    lis     r12,4107
    lfs     f1,-30608(r12)
    li      r4,0
    b       ext_0247f90c
L024bfcb4:
    cmpwi   r12,3
    bnelr-
    lwz     r0,28(r3)
    cmplwi  r0,4
    lwz     r12,32(r3)
    ble-    L024bfcd0
    addi    r12,r12,16
L024bfcd0:
    lwz     r3,0(r12)
    lis     r12,4107
    lfs     f1,-30608(r12)
    li      r4,0
    b       ext_0247f90c
