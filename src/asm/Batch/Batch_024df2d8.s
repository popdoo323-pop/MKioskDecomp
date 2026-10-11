# Converted from the disassembly of 0x024df2d8 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_024df2d8
Batch_024df2d8:
    lwz     r10,0(r4)
    stw     r10,1452(r3)
    lwz     r12,0(r4)
    cmplwi  r12,3
    li      r9,0
    bge-    L024df314
    cmplwi  r12,1
    blt-    L024df35c
    beq-    L024df32c
    stb     r9,1458(r3)
    li      r11,1
    stb     r9,1459(r3)
    stb     r11,1456(r3)
    stb     r11,1457(r3)
    blr
L024df314:
    cmplwi  r12,4
    blt-    L024df35c
    beq-    L024df32c
    cmplwi  r12,5
    beq-    L024df344
    blr
L024df32c:
    stb     r9,1457(r3)
    li      r0,1
    stb     r0,1456(r3)
    stb     r9,1459(r3)
    stb     r9,1458(r3)
    blr
L024df344:
    stb     r9,1458(r3)
    li      r11,1
    stb     r9,1459(r3)
    stb     r11,1456(r3)
    stb     r11,1457(r3)
    blr
L024df35c:
    stb     r9,1457(r3)
    stb     r9,1459(r3)
    stb     r9,1458(r3)
    stb     r9,1456(r3)
    blr
