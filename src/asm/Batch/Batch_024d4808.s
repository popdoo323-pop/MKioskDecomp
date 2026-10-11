# Converted from the disassembly of 0x024d4808 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_024d4808
Batch_024d4808:
    lwz     r8,92(r3)
    lwz     r0,228(r3)
    cmplw   r0,r8
    lwz     r9,232(r3)
    bge-    L024d484c
    lwz     r11,96(r3)
    cmplw   r9,r11
    bge-    L024d484c
    mullw   r12,r8,r9
    add     r8,r12,r0
    lwz     r10,100(r3)
    slwi    r9,r8,4
    add     r10,r10,r9
    lbz     r11,8(r10)
    cmpwi   r11,1
    bnelr-
    b       L024d485c
L024d484c:
    lwz     r10,100(r3)
    lbz     r11,8(r10)
    cmpwi   r11,1
    bnelr-
L024d485c:
    lwz     r12,232(r3)
    stw     r0,636(r3)
    stw     r12,640(r3)
    blr
