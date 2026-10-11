# Converted from the disassembly of 0x024ce81c (96 bytes). Name is a placeholder.
    .text
    .globl Batch_024ce81c
Batch_024ce81c:
    lbz     r0,146(r3)
    cmpwi   r0,0
    bnelr-
    lwz     r8,0(r4)
    cmpwi   r8,-1
    beqlr-
    cmpwi   r5,0
    beq-    L024ce858
    lwz     r7,184(r3)
    cmpw    r8,r7
    blt-    L024ce870
    lwz     r9,192(r3)
    cmpw    r9,r8
    bgelr-
    b       L024ce870
L024ce858:
    lwz     r10,188(r3)
    cmpw    r8,r10
    blt-    L024ce870
    lwz     r11,196(r3)
    cmpw    r11,r8
    bgelr-
L024ce870:
    li      r12,-1
    stw     r12,0(r4)
    blr
