# Converted from the disassembly of 0x024ea8b8 (176 bytes). Name is a placeholder.
    .text
    .globl Batch_024ea8b8
Batch_024ea8b8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,120(r31)
    cmpwi   r12,0
    beq-    L024ea8e8
    lwz     r0,4(r12)
    cmpwi   r0,36
    bne-    L024ea8ec
    b       L024ea948
L024ea8e8:
    li      r0,-1
L024ea8ec:
    cmpwi   r0,37
    beq-    L024ea948
    cmpwi   r0,54
    beq-    L024ea948
    cmpwi   r0,55
    beq-    L024ea948
    lis     r12,4117
    lwz     r12,3660(r12)
    lwz     r12,20(r12)
    li      r0,0
    stw     r0,16(r12)
    bl      ext_02421764
    cmpwi   r3,0
    beq-    L024ea928
    lwz     r3,420(r3)
L024ea928:
    li      r0,1
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_0245d9c0
    lwz     r12,536(r31)
    lwz     r4,4(r12)
    mr      r3,r31
    bl      ext_0248db9c
L024ea948:
    bl      ext_02490bdc
    li      r4,0
    bl      ext_024dba48
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
