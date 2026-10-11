# Converted from the disassembly of 0x024dcc28 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_024dcc28
Batch_024dcc28:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r3,1384(r3)
    cmpwi   r3,0
    beq-    L024dcc58
    lwz     r12,84(r3)
    lwz     r0,124(r12)
    mtctr   r0
    bctrl
    clrlwi  r3,r3,24
    b       L024dcc5c
L024dcc58:
    li      r3,1
L024dcc5c:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
