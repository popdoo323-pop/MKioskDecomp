# Converted from the disassembly of 0x024ec2e4 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024ec2e4
Batch_024ec2e4:
    lwz     r0,28(r3)
    cmplwi  r0,3
    lwz     r12,32(r3)
    ble-    L024ec2f8
    addi    r12,r12,12
L024ec2f8:
    cmpwi   r4,0
    lwz     r3,0(r12)
    beq-    L024ec314
    lis     r10,4107
    lwz     r4,4(r3)
    lfs     f1,-7784(r10)
    b       ext_0247f968
L024ec314:
    lis     r11,4107
    lwz     r4,4(r3)
    lfs     f1,-7552(r11)
    b       ext_0247f968
