# Converted from the disassembly of 0x020445d8 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_020445d8
Batch_020445d8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,4(r31)
    cmpwi   r3,0
    li      r30,0
    beq-    L02044618
    lwz     r12,0(r3)
    lwz     r0,12(r12)
    mtctr   r0
    li      r4,3
    bctrl
    stw     r30,4(r31)
L02044618:
    stw     r30,28(r31)
    stw     r30,24(r31)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
