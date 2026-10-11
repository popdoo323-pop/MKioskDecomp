# Converted from the disassembly of 0x024d7cc4 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_024d7cc4
Batch_024d7cc4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,32(r31)
    lwz     r3,0(r12)
    lwz     r7,4(r3)
    cmpwi   r7,0
    bne-    L024d7d10
    li      r4,1
    li      r5,0
    mr      r6,r4
    bl      ext_0247faa4
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024d7d10:
    lwz     r0,4(r3)
    cmpwi   r0,2
    bne-    L024d7d44
    lwz     r3,0(r12)
    bl      ext_0247fba0
    mr      r3,r31
    bl      ext_024800e0
    lwz     r10,32(r31)
    lis     r9,4107
    lfs     f1,-16548(r9)
    lwz     r3,0(r10)
    li      r4,1
    bl      ext_0247f854
L024d7d44:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
