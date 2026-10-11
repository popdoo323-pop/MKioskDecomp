# Converted from the disassembly of 0x02044274 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_02044274
Batch_02044274:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bne-    L020442a4
    li      r3,16
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L020442bc
L020442a4:
    mr      r3,r31
    bl      ext_02044064
    lis     r0,4096
    stw     r30,8(r31)
    addic   r0,r0,22532
    stw     r0,12(r31)
L020442bc:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
