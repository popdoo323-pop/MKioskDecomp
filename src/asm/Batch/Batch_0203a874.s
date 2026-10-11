# Converted from the disassembly of 0x0203a874 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_0203a874
Batch_0203a874:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lwz     r3,40(r30)
    lwz     r29,0(r30)
    mr      r31,r5
    bl      ext_02051068
    lwz     r0,156(r29)
    mr      r4,r3
    mtctr   r0
    mr      r3,r30
    mr      r5,r31
    bctrl
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
