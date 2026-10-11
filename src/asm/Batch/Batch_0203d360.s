# Converted from the disassembly of 0x0203d360 (176 bytes). Name is a placeholder.
    .text
    .globl Batch_0203d360
Batch_0203d360:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r29,12(r1)
    mr.     r31,r3
    stw     r30,16(r1)
    stw     r0,28(r1)
    mr      r29,r4
    beq-    L0203d3f4
    lwz     r3,224(r31)
    lis     r0,4096
    addic   r0,r0,19796
    cmpwi   r3,0
    stw     r0,0(r31)
    beq-    L0203d3b8
    lwz     r12,140(r3)
    lwz     r0,12(r12)
    mtctr   r0
    li      r4,3
    bctrl
    li      r0,0
    stw     r0,224(r31)
L0203d3b8:
    lwz     r30,144(r31)
    cmpwi   r30,0
    beq-    L0203d3d8
    mr      r3,r30
    li      r4,0
    bl      ext_0204690c
    mr      r3,r30
    bl      ext_026014bc
L0203d3d8:
    mr      r3,r31
    li      r4,0
    bl      ext_0203a444
    clrlwi. r9,r29,31
    beq-    L0203d3f4
    mr      r3,r31
    bl      ext_026014bc
L0203d3f4:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
