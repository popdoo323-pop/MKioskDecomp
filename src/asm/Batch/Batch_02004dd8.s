# Converted from the disassembly of 0x02004dd8 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_02004dd8
Batch_02004dd8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,76(r3)
    lwz     r12,52(r12)
    cmpwi   r12,0
    beq-    L02004e04
    lbz     r0,292(r12)
    cmpwi   r0,0
    bne-    L02004e28
L02004e04:
    lwz     r31,68(r3)
    mr      r3,r31
    bl      ext_02031584
    lis     r12,4120
    lfs     f0,-15636(r12)
    fmuls   f1,f1,f0
    mr      r3,r31
    li      r4,1
    bl      ext_02031530
L02004e28:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
