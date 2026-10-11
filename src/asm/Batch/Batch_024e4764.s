# Converted from the disassembly of 0x024e4764 (44 bytes). Name is a placeholder.
    .text
    .globl Batch_024e4764
Batch_024e4764:
    lwz     r12,536(r3)
    mr      r0,r4
    lwz     r10,220(r12)
    mr      r4,r5
    cmplw   r0,r10
    li      r3,0
    bge-    L024e478c
    lwz     r11,228(r12)
    slwi    r12,r0,2
    lwzx    r3,r12,r11
L024e478c:
    b       ext_024ec070
