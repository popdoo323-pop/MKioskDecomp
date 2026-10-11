# Converted from the disassembly of 0x024ec284 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_024ec284
Batch_024ec284:
    lwz     r0,28(r3)
    li      r12,0
    stb     r12,128(r3)
    cmplwi  r0,1
    lwz     r12,32(r3)
    ble-    L024ec2a0
    addi    r12,r12,4
L024ec2a0:
    li      r4,1
    lwz     r3,0(r12)
    li      r5,0
    mr      r6,r4
    b       ext_0247faa4
