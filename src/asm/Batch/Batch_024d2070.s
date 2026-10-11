# Converted from the disassembly of 0x024d2070 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_024d2070
Batch_024d2070:
    cmpwi   r5,0
    li      r11,0
    lwz     r12,140(r3)
    beq-    L024d2084
    li      r11,2
L024d2084:
    stw     r11,16(r12)
    lwz     r0,4(r3)
    stw     r0,236(r3)
    lwz     r12,120(r4)
    cmpwi   r12,0
    beq-    L024d20b4
    lbz     r10,21(r12)
    li      r0,25
    stw     r0,128(r3)
    addi    r4,r3,232
    stb     r10,253(r3)
    b       ext_0248d73c
L024d20b4:
    li      r10,0
    li      r0,25
    stb     r10,253(r3)
    addi    r4,r3,232
    stw     r0,128(r3)
    b       ext_0248d73c
