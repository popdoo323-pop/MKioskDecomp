# Converted from the disassembly of 0x0200aeb8 (80 bytes). Name is a placeholder.
    .text
    .globl Batch_0200aeb8
Batch_0200aeb8:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lbz     r0,0(r4)
    extsb   r0,r0
    cmpwi   r0,-1
    beq-    L0200aee0
    bl      ext_0200ae34
    cmpwi   r3,0
    bne-    L0200aef4
L0200aee0:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,0
    blr
L0200aef4:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    li      r3,1
    blr
