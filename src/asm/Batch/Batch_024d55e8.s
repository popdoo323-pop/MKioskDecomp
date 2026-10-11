# Converted from the disassembly of 0x024d55e8 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_024d55e8
Batch_024d55e8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024d5614
    li      r3,184
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024d5654
L024d5614:
    li      r30,0
    stw     r30,0(r31)
    addic.  r3,r31,8
    stw     r30,4(r31)
    bne-    L024d5638
    li      r3,168
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024d5644
L024d5638:
    sth     r30,4(r3)
    stw     r30,0(r3)
    sth     r30,6(r3)
L024d5644:
    li      r12,-1
    li      r0,1
    stw     r12,176(r31)
    stb     r0,180(r31)
L024d5654:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
