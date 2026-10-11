# Converted from the disassembly of 0x02039c84 (216 bytes). Name is a placeholder.
    .text
    .globl Batch_02039c84
Batch_02039c84:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r31,52(r1)
    stw     r30,48(r1)
    mr.     r31,r3
    stw     r0,60(r1)
    bne-    L02039cb0
    li      r3,464
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02039d40
L02039cb0:
    mr      r3,r31
    bl      ext_02631304
    lis     r12,4096
    mr      r3,r31
    lis     r0,4096
    addi    r12,r12,18016
    li      r4,4
    addic   r0,r0,18160
    stw     r12,0(r31)
    li      r5,3
    stw     r0,4(r31)
    bl      ext_02631e4c
    li      r5,0
    li      r4,1
    mr      r3,r31
    bl      ext_02631f1c
    li      r0,24
    lis     r12,4117
    mr      r3,r31
    li      r4,0
    stw     r0,8232(r12)
    bl      ext_02631f14
    mr      r3,r31
    li      r4,0
    bl      ext_02631f7c
    mr      r3,r31
    li      r4,17
    bl      ext_02631f84
    addi    r3,r1,8
    addi    r30,r31,252
    bl      ext_02636688
    li      r0,0
    mr      r3,r30
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_026376b4
L02039d40:
    lwz     r0,60(r1)
    mr      r3,r31
    lwz     r31,52(r1)
    mtlr    r0
    lwz     r30,48(r1)
    addi    r1,r1,56
    blr
