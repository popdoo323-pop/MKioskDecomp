# Converted from the disassembly of 0x024d9b94 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_024d9b94
Batch_024d9b94:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,80(r31)
    cmpwi   r12,1
    bne-    L024d9bf4
    lwz     r0,88(r31)
    cmplwi  r0,2
    blt-    L024d9bf4
    lis     r3,4121
    lwz     r3,30568(r3)
    bl      ext_026126b4
    lbz     r0,472(r31)
    cmpwi   r0,0
    bne-    L024d9be8
    li      r10,3
    li      r0,22
    stw     r10,336(r31)
    stw     r0,312(r31)
L024d9be8:
    mr      r3,r31
    addi    r4,r31,308
    bl      ext_0248d73c
L024d9bf4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
