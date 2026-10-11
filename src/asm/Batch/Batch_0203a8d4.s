# Converted from the disassembly of 0x0203a8d4 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_0203a8d4
Batch_0203a8d4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r4
    mr      r30,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    bl      ext_02041f68
    bl      ext_02042680
    addi    r29,r3,384
    mr      r3,r29
    bl      ext_0262b790
    lwz     r3,44(r30)
    mr      r4,r31
    bl      ext_0262ea08
    lwz     r3,44(r30)
    bl      ext_0259b58c
    mr      r3,r29
    bl      ext_0262b7c4
    lis     r12,4096
    lfs     f1,18384(r12)
    mr      r3,r30
    bl      ext_0203a4ec
    li      r0,0
    stb     r0,84(r30)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
