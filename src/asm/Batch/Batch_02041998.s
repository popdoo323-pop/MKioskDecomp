# Converted from the disassembly of 0x02041998 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_02041998
Batch_02041998:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r4
    cmpwi   r3,0
    stw     r0,20(r1)
    bne-    L020419c4
    li      r3,4
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L020419cc
L020419c4:
    lwz     r0,12(r31)
    stw     r0,0(r3)
L020419cc:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
