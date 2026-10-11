# Converted from the disassembly of 0x024d486c (60 bytes). Name is a placeholder.
    .text
    .globl Batch_024d486c
Batch_024d486c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-8(r1)
    lwz     r0,20(r4)
    cmpwi   r0,2
    mr      r7,r3
    bne-    L024d4890
    lwz     r3,88(r7)
    bl      ext_024d4808
L024d4890:
    mr      r3,r7
    bl      ext_024d3f74
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
