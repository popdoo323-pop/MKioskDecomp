# Converted from the disassembly of 0x024dd86c (148 bytes). Name is a placeholder.
    .text
    .globl Batch_024dd86c
Batch_024dd86c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,3660(r12)
    lbz     r0,40(r12)
    cmpwi   r0,0
    mr      r31,r3
    bne-    L024dd8e8
    mr      r3,r31
    bl      ext_024dd3d0
    mr      r3,r31
    bl      ext_024dd5f0
    lwz     r0,76(r31)
    cmpwi   r0,4
    bne-    L024dd8e8
    addi    r3,r31,200
    bl      ext_024dc060
    mr.     r30,r3
    beq-    L024dd8e8
    mr      r3,r30
    mr      r4,r31
    bl      ext_0248e338
    lwz     r9,196(r30)
    lwz     r10,204(r9)
    mtctr   r10
    mr      r3,r30
    mr      r4,r31
    bctrl
L024dd8e8:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
