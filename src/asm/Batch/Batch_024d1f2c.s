# Converted from the disassembly of 0x024d1f2c (112 bytes). Name is a placeholder.
    .text
    .globl Batch_024d1f2c
Batch_024d1f2c:
    lwz     r12,200(r3)
    lwz     r11,12(r12)
    xori    r0,r4,1
    cmpwi   r11,0
    clrlwi  r0,r0,24
    bne-    L024d1f6c
    cmpwi   r0,0
    lwz     r0,16(r12)
    beq-    L024d1f60
    ori     r0,r0,32
    stw     r0,16(r12)
    lwz     r12,200(r3)
    b       L024d1f6c
L024d1f60:
    rlwinm  r0,r0,0,27,25
    stw     r0,16(r12)
    lwz     r12,200(r3)
L024d1f6c:
    lwz     r8,12(r12)
    cmpwi   r8,0
    bnelr-
    cmpwi   r4,0
    lwz     r9,16(r12)
    beq-    L024d1f90
    ori     r9,r9,64
    stw     r9,16(r12)
    blr
L024d1f90:
    rlwinm  r10,r9,0,26,24
    stw     r10,16(r12)
    blr
