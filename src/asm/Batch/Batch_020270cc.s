# Converted from the disassembly of 0x020270cc (140 bytes). Name is a placeholder.
    .text
    .globl Batch_020270cc
Batch_020270cc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r9,20(r31)
    lwz     r30,0(r31)
    lwz     r3,8(r9)
    bl      ext_0203052c
    lwz     r9,20(r31)
    addi    r12,r30,536
    cmplwi  r3,12
    lwz     r10,8(r9)
    bge-    L02027110
    slwi    r0,r3,2
    add     r12,r12,r0
L02027110:
    lwz     r3,84(r10)
    lwz     r30,0(r12)
    bl      ext_02185c90
    cmpwi   r3,0
    lwz     r3,12(r31)
    beq-    L0202712c
    li      r30,0
L0202712c:
    li      r4,100
    bl      ext_02008eb0
    cmpw    r3,r30
    mfcr    r0
    lwz     r30,8(r1)
    srwi    r3,r0,31
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
