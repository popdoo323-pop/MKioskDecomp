# Converted from the disassembly of 0x024df370 (24 bytes). Name is a placeholder.
    .text
    .globl Batch_024df370
Batch_024df370:
    cmplwi  r4,4
    addi    r12,r3,1456
    bge-    L024df380
    add     r12,r12,r4
L024df380:
    stb     r5,0(r12)
    blr
