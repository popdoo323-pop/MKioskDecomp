# Converted from the disassembly of 0x0202d680 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_0202d680
Batch_0202d680:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0202d498
    lis     r12,4120
    lfs     f1,-12716(r12)
    lwz     r12,40(r31)
    lbz     r0,189(r12)
    cmpwi   r0,0
    lwz     r3,44(r31)
    beq-    L0202d6bc
    lis     r12,4120
    lfs     f1,-12712(r12)
L0202d6bc:
    li      r4,0
    bl      ext_02031530
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
