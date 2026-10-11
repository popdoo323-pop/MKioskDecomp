# Converted from the disassembly of 0x0203e790 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_0203e790
Batch_0203e790:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bl      ext_0203a8d4
    lwz     r3,148(r31)
    mr      r4,r30
    bl      ext_0262ea08
    lwz     r3,144(r31)
    bl      ext_02046b44
    li      r12,0
    stb     r12,222(r31)
    stb     r12,220(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
