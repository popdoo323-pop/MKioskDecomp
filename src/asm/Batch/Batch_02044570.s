# Converted from the disassembly of 0x02044570 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_02044570
Batch_02044570:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L02044598
    li      r3,48
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L020445c0
L02044598:
    mr      r3,r31
    bl      ext_02630210
    lis     r12,4096
    li      r0,0
    addi    r12,r12,22792
    stw     r0,24(r31)
    stw     r12,0(r31)
    stb     r0,32(r31)
    stb     r0,33(r31)
    stw     r0,28(r31)
L020445c0:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
