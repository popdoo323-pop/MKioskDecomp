# Converted from the disassembly of 0x0203e730 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e730
Batch_0203e730:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r5
    mr      r30,r4
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r3
    bl      ext_0203dfd0
    li      r12,0
    mr      r4,r30
    mr      r3,r29
    stb     r12,220(r29)
    mr      r5,r31
    stb     r12,222(r29)
    bl      ext_0203a5ac
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
