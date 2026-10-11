# Converted from the disassembly of 0x0203f45c (156 bytes). Name is a placeholder.
    .text
    .globl Batch_0203f45c
Batch_0203f45c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r12,168(r30)
    cmpwi   r12,-1
    beq-    L0203f4ac
    lwz     r3,4(r30)
    bl      ext_0203b094
    lbz     r0,89(r3)
    cmpwi   r0,0
    bne-    L0203f4ac
    lwz     r4,172(r30)
    li      r5,0
    mr      r3,r30
    bl      ext_0203a958
    cmpwi   r3,0
    bne-    L0203f4c8
L0203f4ac:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,0
    blr
L0203f4c8:
    lwz     r4,44(r30)
    li      r31,1
    lwz     r3,224(r30)
    stb     r31,222(r30)
    bl      ext_02040950
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
