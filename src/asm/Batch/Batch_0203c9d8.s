# Converted from the disassembly of 0x0203c9d8 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c9d8
Batch_0203c9d8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bl      ext_0203c958
    cmpwi   r3,0
    bgt-    L0203ca04
    li      r30,0
L0203ca04:
    addi    r3,r31,36
    mr      r4,r30
    bl      ext_0262ea08
    li      r0,-1
    stw     r0,40(r31)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
