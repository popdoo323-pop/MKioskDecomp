# Converted from the disassembly of 0x0201e838 (204 bytes). Name is a placeholder.
    .text
    .globl Batch_0201e838
Batch_0201e838:
    stwu    r1,-48(r1)
    mflr    r0
    li      r5,0
    stw     r30,40(r1)
    stw     r5,28(r1)
    stw     r5,32(r1)
    stb     r5,16(r1)
    stw     r31,44(r1)
    lis     r12,4120
    stw     r0,52(r1)
    lwz     r12,-13736(r12)
    stb     r5,116(r3)
    stw     r12,12(r1)
    lhz     r10,12(r1)
    stw     r12,8(r1)
    lhz     r0,8(r1)
    lhz     r7,10(r1)
    lwz     r6,120(r3)
    mr      r30,r3
    sth     r10,22(r1)
    addi    r6,r6,1
    stb     r5,36(r1)
    sth     r0,18(r1)
    lhz     r0,14(r1)
    stw     r6,120(r3)
    sth     r7,20(r1)
    sth     r0,24(r1)
    bl      ext_0201dd74
    mr      r31,r3
    mr      r3,r30
    addi    r4,r1,16
    bl      ext_0201e248
    cmpwi   r3,0
    beq-    L0201e8c4
    li      r31,1
L0201e8c4:
    mr      r3,r30
    addi    r4,r1,16
    bl      ext_0201e728
    cmpwi   r3,0
    bne-    L0201e8e0
    cmpwi   r31,0
    beq-    L0201e8ec
L0201e8e0:
    mr      r3,r30
    addi    r4,r1,16
    bl      ext_0201d21c
L0201e8ec:
    lwz     r0,52(r1)
    lwz     r30,40(r1)
    mtlr    r0
    lwz     r31,44(r1)
    addi    r1,r1,48
    blr
