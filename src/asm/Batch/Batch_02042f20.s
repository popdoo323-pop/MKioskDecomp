# Converted from the disassembly of 0x02042f20 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_02042f20
Batch_02042f20:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L02042fa0
    lis     r0,4096
    lis     r9,4096
    addic   r0,r0,20788
    addi    r9,r9,20804
    stw     r0,32(r30)
    cmpwi   r30,0
    stw     r9,200(r30)
    beq-    L02042f90
    lis     r0,4106
    addi    r3,r30,212
    addic   r0,r0,-19532
    lis     r12,4106
    stw     r0,32(r30)
    addi    r12,r12,-19516
    li      r4,0
    stw     r12,200(r30)
    bl      ext_02411014
    mr      r3,r30
    li      r4,0
    bl      ext_0260d2cc
L02042f90:
    clrlwi. r11,r31,31
    beq-    L02042fa0
    mr      r3,r30
    bl      ext_026014bc
L02042fa0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
