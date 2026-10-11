# Converted from the disassembly of 0x02034078 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02034078
Batch_02034078:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lbz     r0,68(r31)
    cmpwi   r0,0
    beq-    L020340e0
    addi    r30,r31,380
    li      r29,3
L020340a8:
    mr      r3,r30
    bl      ext_02033860
    addic.  r29,r29,-1
    addi    r30,r30,280
    bne+    L020340a8
    lwz     r4,60(r31)
    mr      r3,r31
    bl      ext_02634a68
    lwz     r3,60(r31)
    bl      ext_02635408
    li      r12,0
    li      r0,1
    stb     r12,68(r31)
    stw     r0,72(r31)
L020340e0:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
