# Converted from the disassembly of 0x024dcbe0 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_024dcbe0
Batch_024dcbe0:
    lwz     r0,120(r3)
    cmpwi   r0,0
    bnelr-
    lwz     r9,76(r3)
    cmpwi   r9,5
    mfcr    r11
    srwi    r0,r11,31
    li      r12,5
    xori    r0,r0,1
    cmpwi   r5,0
    stb     r0,1472(r3)
    beq-    L024dcc14
    li      r12,4
L024dcc14:
    stw     r12,256(r3)
    li      r10,1
    lwz     r12,256(r3)
    stb     r10,24(r3)
    b       ext_0248d73c
