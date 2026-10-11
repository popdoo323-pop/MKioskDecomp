# Converted from the disassembly of 0x024bc2d8 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc2d8
Batch_024bc2d8:
    lhz     r0,220(r3)
    cmpwi   r0,0
    bnelr-
    lwz     r11,16(r4)
    cmpwi   r11,0
    beq-    L024bc324
    lwz     r10,20(r4)
    cmpwi   r10,0
    bne-    L024bc30c
    lwz     r12,84(r3)
    lwz     r0,124(r12)
    mtctr   r0
    bctr
L024bc30c:
    cmpwi   r10,1
    bnelr-
    lwz     r10,84(r3)
    lwz     r0,132(r10)
    mtctr   r0
    bctr
L024bc324:
    lwz     r0,0(r4)
    addi    r12,r3,104
    cmplw   r0,r12
    bne-    L024bc350
    lwz     r10,20(r4)
    cmpwi   r10,0
    bnelr-
    lwz     r12,84(r3)
    lwz     r0,140(r12)
    mtctr   r0
    bctr
L024bc350:
    addi    r12,r3,152
    cmplw   r0,r12
    bnelr-
    lwz     r10,20(r4)
    cmpwi   r10,3
    bnelr-
    lwz     r12,84(r3)
    lwz     r10,140(r12)
    mtctr   r10
    bctr
