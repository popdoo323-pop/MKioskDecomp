# Converted from the disassembly of 0x0203a444 (168 bytes). Name is a placeholder.
    .text
    .globl Batch_0203a444
Batch_0203a444:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r29,12(r1)
    stw     r0,28(r1)
    beq-    L0203a4d0
    lwz     r3,48(r30)
    lis     r0,4096
    addic   r0,r0,18448
    cmpwi   r3,0
    stw     r0,0(r30)
    beq-    L0203a4a4
    bl      ext_02046b44
    lwz     r29,48(r30)
    cmpwi   r29,0
    beq-    L0203a4a4
    mr      r3,r29
    li      r4,0
    bl      ext_0204690c
    mr      r3,r29
    bl      ext_026014bc
L0203a4a4:
    addi    r3,r30,56
    bl      ext_025a1488
    addi    r3,r30,52
    bl      ext_0258ca88
    mr      r3,r30
    li      r4,0
    bl      ext_02411014
    clrlwi. r0,r31,31
    beq-    L0203a4d0
    mr      r3,r30
    bl      ext_026014bc
L0203a4d0:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
