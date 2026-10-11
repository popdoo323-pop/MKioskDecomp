# Converted from the disassembly of 0x0203fe80 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_0203fe80
Batch_0203fe80:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r3,4117
    stw     r0,20(r1)
    lwz     r3,-27200(r3)
    lwz     r12,0(r3)
    lwz     r0,20(r12)
    mtctr   r0
    li      r31,100
    bctrl
    cmpwi   r3,0
    beq-    L0203fec0
    li      r4,1
    bl      ext_02051f08
    mr      r31,r3
L0203fec0:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
