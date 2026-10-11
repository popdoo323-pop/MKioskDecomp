# Converted from the disassembly of 0x024de9b0 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_024de9b0
Batch_024de9b0:
    lwz     r8,200(r3)
    lwz     r0,4(r3)
    cmplw   r8,r0
    bne-    L024dea60
    lwz     r12,212(r3)
    cmpwi   r12,0
    beq-    L024de9d4
    cmpwi   r12,9
    bne-    L024dea60
L024de9d4:
    lis     r12,4121
    lwz     r12,30556(r12)
    lwz     r0,248(r3)
    lwz     r11,0(r12)
    li      r8,5
    li      r10,-1
    lwz     r11,312(r11)
    cmpwi   r0,1
    stw     r8,256(r3)
    lwz     r9,256(r3)
    bne-    L024dea30
    cmpwi   r11,3
    li      r10,48
    beq-    L024dea44
L024dea0c:
    lwz     r12,1468(r3)
    li      r0,3
    stw     r0,28(r12)
    stw     r10,4(r12)
    lwz     r8,1468(r3)
    li      r9,1
    stb     r9,140(r8)
    lwz     r4,1468(r3)
    b       ext_0248d73c
L024dea30:
    cmpwi   r0,2
    bne-    L024dea3c
    li      r10,23
L024dea3c:
    cmpwi   r11,3
    bne+    L024dea0c
L024dea44:
    lwz     r9,1464(r3)
    stw     r10,4(r9)
    lwz     r11,1464(r3)
    li      r10,1
    stb     r10,28(r11)
    lwz     r4,1464(r3)
    b       ext_0248d73c
L024dea60:
    b       ext_024dc76c
