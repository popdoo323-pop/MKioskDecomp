# Converted from the disassembly of 0x0203d438 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_0203d438
Batch_0203d438:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    lis     r12,4117
    stw     r0,28(r1)
    lwz     r12,1072(r12)
    cmpwi   r12,5
    mr      r30,r3
    beq-    L0203d4e8
    mr      r3,r30
    bl      ext_0203d410
    lwz     r31,240(r3)
    mr      r3,r31
    bl      ext_02068548
    lwz     r0,248(r30)
    cmplw   r0,r3
    beq-    L0203d4e8
    mr      r3,r31
    bl      ext_02068548
    cmpwi   r3,1
    stw     r3,248(r30)
    bne-    L0203d4e8
    mr      r3,r30
    bl      ext_0203d410
    lwz     r12,192(r3)
    cmpwi   r12,24
    bne-    L0203d4c4
    li      r0,11
    lwz     r5,140(r30)
    mr      r3,r30
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_0203d418
    b       L0203d4e8
L0203d4c4:
    lwz     r12,192(r3)
    cmpwi   r12,29
    bne-    L0203d4e8
    li      r0,9
    lwz     r5,140(r30)
    mr      r3,r30
    addi    r4,r1,12
    stw     r0,12(r1)
    bl      ext_0203d418
L0203d4e8:
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
