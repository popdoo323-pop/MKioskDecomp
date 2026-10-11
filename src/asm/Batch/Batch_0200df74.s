# Converted from the disassembly of 0x0200df74 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_0200df74
Batch_0200df74:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r3,104(r3)
    bl      ext_0200b2e4
    cmpwi   r3,0
    li      r0,-1
    beq-    L0200df9c
    lbz     r0,14(r3)
    extsb   r0,r0
L0200df9c:
    mr      r3,r0
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
