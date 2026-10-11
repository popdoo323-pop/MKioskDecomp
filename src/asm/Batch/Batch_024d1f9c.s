# Converted from the disassembly of 0x024d1f9c (212 bytes). Name is a placeholder.
    .text
    .globl Batch_024d1f9c
Batch_024d1f9c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    mr      r30,r4
    stw     r31,20(r1)
    mr      r31,r5
    li      r4,4
    stw     r29,12(r1)
    cmpwi   r6,0
    stw     r0,28(r1)
    mr      r29,r3
    beq-    L024d1fd0
    li      r4,6
L024d1fd0:
    mr      r3,r29
    bl      ext_0248c860
    stw     r29,144(r30)
    lwz     r8,200(r29)
    li      r9,0
    cmpwi   r31,0
    stw     r30,460(r8)
    lwz     r10,140(r29)
    beq-    L024d1ff8
    li      r9,2
L024d1ff8:
    stw     r9,16(r10)
    lwz     r0,4(r29)
    stw     r0,208(r29)
    lwz     r12,116(r30)
    cmpwi   r12,0
    beq-    L024d2034
    lbz     r0,21(r12)
    mr      r3,r30
    addi    r4,r29,204
    stb     r0,225(r29)
    bl      ext_0248d73c
    li      r4,0
    mr      r3,r29
    bl      ext_024d1f2c
    b       L024d2054
L024d2034:
    li      r0,0
    addi    r4,r29,204
    mr      r3,r30
    stb     r0,225(r29)
    bl      ext_0248d73c
    li      r4,0
    mr      r3,r29
    bl      ext_024d1f2c
L024d2054:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
