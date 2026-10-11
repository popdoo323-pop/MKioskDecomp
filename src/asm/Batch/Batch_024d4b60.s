# Converted from the disassembly of 0x024d4b60 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024d4b60
Batch_024d4b60:
    lwz     r0,28(r3)
    cmplwi  r0,2
    lwz     r12,32(r3)
    ble-    L024d4b74
    addi    r12,r12,8
L024d4b74:
    cmpwi   r4,0
    lwz     r3,0(r12)
    beq-    L024d4b90
    lis     r12,4107
    lfs     f1,-17468(r12)
    li      r4,0
    b       ext_0247f968
L024d4b90:
    lis     r11,4107
    lfs     f1,-17464(r11)
    li      r4,0
    b       ext_0247f968
