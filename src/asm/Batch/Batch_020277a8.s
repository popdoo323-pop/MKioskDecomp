# Converted from the disassembly of 0x020277a8 (68 bytes). Name is a placeholder.
    .text
    .globl Batch_020277a8
Batch_020277a8:
    mflr    r0
    li      r5,0
    stw     r0,4(r1)
    mr      r4,r5
    stwu    r1,-8(r1)
    bl      ext_020275a0
    cmpwi   r3,0
    beq-    L020277d8
    lwz     r0,32(r3)
    cmpwi   r0,2
    bne-    L020277d8
    li      r5,1
L020277d8:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    mr      r3,r5
    blr
