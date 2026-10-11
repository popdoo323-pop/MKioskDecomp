# Converted from the disassembly of 0x02018438 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_02018438
Batch_02018438:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020175d8
    lwz     r8,80(r31)
    li      r7,0
    stb     r7,169(r31)
    addi    r3,r8,108
    stb     r7,168(r31)
    bl      ext_0201f0b8
    cmpwi   r3,0
    beq-    L020184a8
    mr      r3,r31
    bl      ext_02018404
    cmpwi   r3,0
    beq-    L020184a8
    lwz     r10,104(r31)
    lis     r3,4120
    li      r0,1
    lwz     r3,-13988(r3)
    stb     r0,168(r31)
    stw     r3,160(r31)
    lwz     r0,124(r10)
    cmpwi   r0,-1
    beq-    L020184d8
    b       L020184cc
L020184a8:
    lis     r4,4120
    lwz     r3,88(r31)
    lwz     r4,-14016(r4)
    bl      ext_02008eb0
    lwz     r10,104(r31)
    stw     r3,160(r31)
    lwz     r0,124(r10)
    cmpwi   r0,-1
    beq-    L020184d8
L020184cc:
    lis     r12,4120
    lwz     r12,-14000(r12)
    stw     r12,160(r31)
L020184d8:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
