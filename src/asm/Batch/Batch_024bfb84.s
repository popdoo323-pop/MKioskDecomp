# Converted from the disassembly of 0x024bfb84 (208 bytes). Name is a placeholder.
    .text
    .globl Batch_024bfb84
Batch_024bfb84:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r29,20(r1)
    stw     r31,28(r1)
    stw     r30,24(r1)
    mr      r31,r4
    stw     r0,36(r1)
    lwz     r0,0(r31)
    mr      r30,r3
    cmpwi   r0,2
    li      r29,0
    bne-    L024bfbf4
    lbz     r9,296(r30)
    cmpwi   r9,0
    beq-    L024bfbe0
    addi    r3,r30,96
    bl      ext_0248ab50
    lwz     r10,0(r31)
    addi    r4,r1,8
    mr      r3,r30
    stw     r10,8(r1)
    bl      ext_024bfb20
    stb     r29,296(r30)
L024bfbe0:
    lwz     r4,88(r30)
    li      r5,0
    mr      r3,r30
    bl      ext_02480664
    b       L024bfc38
L024bfbf4:
    cmpwi   r0,3
    bne-    L024bfc38
    lbz     r12,297(r30)
    cmpwi   r12,0
    beq-    L024bfc28
    addi    r3,r30,160
    bl      ext_0248ab50
    lwz     r0,0(r31)
    addi    r4,r1,12
    mr      r3,r30
    stw     r0,12(r1)
    bl      ext_024bfb20
    stb     r29,297(r30)
L024bfc28:
    lwz     r4,92(r30)
    li      r5,0
    mr      r3,r30
    bl      ext_02480664
L024bfc38:
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
