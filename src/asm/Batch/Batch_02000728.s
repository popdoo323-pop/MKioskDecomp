# Converted from the disassembly of 0x02000728 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_02000728
Batch_02000728:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r12,112(r30)
    cmpwi   r12,0
    beq-    L0200079c
    lwz     r10,80(r12)
    cmpwi   r10,0
    beq-    L0200079c
    lwz     r0,84(r12)
    cmpwi   r0,0
    beq-    L0200079c
    lwz     r0,88(r12)
    cmpwi   r0,0
    beq-    L0200079c
    lwz     r9,68(r30)
    lwz     r3,84(r9)
    lwz     r31,88(r12)
    bl      ext_02185cb4
    lwz     r8,112(r30)
    mr      r5,r3
    lwz     r12,80(r8)
    addi    r4,r31,4
    lwz     r3,96(r30)
    addi    r6,r12,4
    bl      ext_0202b460
L0200079c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
