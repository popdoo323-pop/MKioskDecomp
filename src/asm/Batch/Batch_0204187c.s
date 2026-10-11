# Converted from the disassembly of 0x0204187c (276 bytes). Name is a placeholder.
    .text
    .globl Batch_0204187c
Batch_0204187c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r29,12(r1)
    mr.     r31,r3
    stw     r30,16(r1)
    stw     r0,28(r1)
    mr      r29,r4
    beq-    L02041974
    lis     r12,4096
    lis     r0,4096
    lwz     r3,416(r31)
    addi    r12,r12,22404
    addic   r0,r0,22420
    lis     r11,4096
    stw     r12,32(r31)
    cmpwi   r3,0
    addi    r11,r11,22084
    stw     r0,200(r31)
    li      r30,0
    stw     r11,112(r31)
    beq-    L020418e0
    li      r4,3
    bl      ext_02037c60
    stw     r30,416(r31)
L020418e0:
    lwz     r3,420(r31)
    cmpwi   r3,0
    beq-    L020418f4
    bl      ext_026014bc
    stw     r30,420(r31)
L020418f4:
    addi    r3,r31,444
    li      r4,2
    bl      ext_0262b73c
    addi    r3,r31,356
    li      r4,2
    bl      ext_0262b73c
    cmpwi   r31,0
    beq-    L02041964
    lis     r9,4096
    lis     r10,4096
    addi    r9,r9,20788
    addi    r10,r10,20804
    stw     r9,32(r31)
    cmpwi   r31,0
    stw     r10,200(r31)
    beq-    L02041964
    lis     r11,4106
    addi    r3,r31,212
    addi    r11,r11,-19532
    lis     r0,4106
    stw     r11,32(r31)
    addic   r0,r0,-19516
    li      r4,0
    stw     r0,200(r31)
    bl      ext_02411014
    mr      r3,r31
    li      r4,0
    bl      ext_0260d2cc
L02041964:
    clrlwi. r0,r29,31
    beq-    L02041974
    mr      r3,r31
    bl      ext_026014bc
L02041974:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
