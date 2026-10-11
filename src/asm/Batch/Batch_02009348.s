# Converted from the disassembly of 0x02009348 (196 bytes). Name is a placeholder.
    .text
    .globl Batch_02009348
Batch_02009348:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,28(r1)
    mr      r31,r3
    stw     r30,24(r1)
    li      r4,0
    stw     r0,36(r1)
    bl      ext_02009208
    mr      r30,r3
    li      r4,1
    mr      r3,r31
    bl      ext_02009208
    subf    r30,r3,r30
    bl      ext_02015408
    cmpwi   r3,0
    beq-    L020093a0
    li      r0,1
    lwz     r3,52(r31)
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_0202a1d8
    b       L020093f4
L020093a0:
    cmpwi   r30,-6
    bgt-    L020093c0
    li      r0,0
    lwz     r3,52(r31)
    addi    r4,r1,12
    stw     r0,12(r1)
    bl      ext_0202a1d8
    b       L020093f4
L020093c0:
    cmpwi   r30,5
    bgt-    L020093e0
    li      r10,1
    lwz     r3,52(r31)
    addi    r4,r1,16
    stw     r10,16(r1)
    bl      ext_0202a1d8
    b       L020093f4
L020093e0:
    li      r0,2
    lwz     r3,52(r31)
    addi    r4,r1,20
    stw     r0,20(r1)
    bl      ext_0202a1d8
L020093f4:
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
