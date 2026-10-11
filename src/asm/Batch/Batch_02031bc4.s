# Converted from the disassembly of 0x02031bc4 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_02031bc4
Batch_02031bc4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lbz     r0,148(r3)
    cmpwi   r0,0
    li      r31,0
    beq-    L02031bf4
    bl      ext_0201516c
    cmpwi   r3,0
    beq-    L02031bf4
    li      r31,1
L02031bf4:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
