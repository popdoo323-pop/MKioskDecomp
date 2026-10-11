# Converted from the disassembly of 0x0203dd2c (212 bytes). Name is a placeholder.
    .text
    .globl Batch_0203dd2c
Batch_0203dd2c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,1072(r12)
    cmpwi   r12,5
    mr      r30,r3
    bne-    L0203dd7c
    lwz     r31,176(r30)
    cmpwi   r31,-1
    beq-    L0203dd7c
    lwz     r3,4(r30)
    stw     r31,168(r30)
    bl      ext_0203b094
    lbz     r0,89(r3)
    cmpwi   r0,0
    beq-    L0203dd9c
    b       L0203ddb4
L0203dd7c:
    lwz     r31,168(r30)
    cmpwi   r31,-1
    beq-    L0203ddb4
    lwz     r3,4(r30)
    bl      ext_0203b094
    lbz     r0,89(r3)
    cmpwi   r0,0
    bne-    L0203ddb4
L0203dd9c:
    li      r5,0
    mr      r4,r31
    mr      r3,r30
    bl      ext_0203a958
    cmpwi   r3,0
    bne-    L0203ddd0
L0203ddb4:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    li      r3,0
    blr
L0203ddd0:
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
