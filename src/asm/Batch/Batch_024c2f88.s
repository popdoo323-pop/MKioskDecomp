# Converted from the disassembly of 0x024c2f88 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_024c2f88
Batch_024c2f88:
    lwz     r11,88(r3)
    cmpwi   r11,0
    beqlr-
    lwz     r0,28(r11)
    cmplwi  r0,1
    lwz     r12,32(r11)
    ble-    L024c2fa8
    addi    r12,r12,4
L024c2fa8:
    cmpwi   r4,0
    lwz     r3,0(r12)
    beq-    L024c2fc4
    lis     r10,4107
    lfs     f1,-25824(r10)
    li      r4,0
    b       ext_0247f968
L024c2fc4:
    lis     r9,4107
    lfs     f1,-25828(r9)
    li      r4,0
    b       ext_0247f968
