# Converted from the disassembly of 0x024c8288 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_024c8288
Batch_024c8288:
    lwz     r8,0(r4)
    lwz     r9,180(r3)
    cmpwi   r8,2
    lwz     r7,28(r9)
    bne-    L024c82bc
    cmplwi  r7,1
    lwz     r11,32(r9)
    ble-    L024c82ac
    addi    r11,r11,4
L024c82ac:
    cmpwi   r8,2
    lwz     r10,0(r11)
    bne-    L024c82e8
    b       L024c82d8
L024c82bc:
    cmplwi  r7,2
    lwz     r12,32(r9)
    ble-    L024c82cc
    addi    r12,r12,8
L024c82cc:
    cmpwi   r8,2
    lwz     r10,0(r12)
    bne-    L024c82e8
L024c82d8:
    lbz     r0,428(r3)
    cmpwi   r0,0
    beq-    L024c82f4
    blr
L024c82e8:
    lbz     r0,429(r3)
    cmpwi   r0,0
    bnelr-
L024c82f4:
    lwz     r0,4(r10)
    cmpwi   r0,0
    bnelr-
    lis     r12,4107
    mr      r3,r10
    lfs     f1,-22836(r12)
    li      r4,0
    b       ext_0247f90c
