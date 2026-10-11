# Converted from the disassembly of 0x024ec254 (48 bytes). Name is a placeholder.
    .text
    .globl Batch_024ec254
Batch_024ec254:
    lwz     r0,28(r3)
    li      r12,0
    stb     r12,128(r3)
    cmplwi  r0,1
    lwz     r12,32(r3)
    ble-    L024ec270
    addi    r12,r12,4
L024ec270:
    li      r4,0
    lwz     r3,0(r12)
    li      r6,1
    mr      r5,r4
    b       ext_0247faa4
