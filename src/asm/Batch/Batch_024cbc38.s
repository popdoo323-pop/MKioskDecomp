# Converted from the disassembly of 0x024cbc38 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_024cbc38
Batch_024cbc38:
    lwz     r0,120(r3)
    cmplw   r4,r0
    lwz     r3,124(r3)
    bge-    L024cbc50
    mulli   r12,r4,12
    add     r3,r3,r12
L024cbc50:
    mr      r4,r5
    li      r6,4
    li      r5,0
    b       ext_02601af8
