# Converted from the disassembly of 0x02037c60 (384 bytes). Name is a placeholder.
    .text
    .globl Batch_02037c60
Batch_02037c60:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r29,12(r1)
    stw     r0,28(r1)
    beq-    L02037dc4
    lwz     r3,0(r30)
    cmpwi   r3,0
    li      r29,0
    beq-    L02037cac
    lwz     r12,0(r3)
    lwz     r10,28(r12)
    mtctr   r10
    li      r4,3
    bctrl
    stw     r29,0(r30)
L02037cac:
    lwz     r3,4(r30)
    cmpwi   r3,0
    beq-    L02037cd0
    lwz     r12,0(r3)
    lwz     r9,28(r12)
    mtctr   r9
    li      r4,3
    bctrl
    stw     r29,4(r30)
L02037cd0:
    lwz     r3,12(r30)
    cmpwi   r3,0
    beq-    L02037cf4
    lwz     r12,0(r3)
    lwz     r0,28(r12)
    mtctr   r0
    li      r4,3
    bctrl
    stw     r29,12(r30)
L02037cf4:
    lwz     r3,16(r30)
    cmpwi   r3,0
    beq-    L02037d18
    lwz     r10,0(r3)
    lwz     r0,36(r10)
    mtctr   r0
    li      r4,3
    bctrl
    stw     r29,16(r30)
L02037d18:
    lwz     r3,20(r30)
    cmpwi   r3,0
    beq-    L02037d30
    li      r4,3
    bl      ext_0203c4f4
    stw     r29,20(r30)
L02037d30:
    lwz     r3,24(r30)
    cmpwi   r3,0
    beq-    L02037d48
    li      r4,3
    bl      ext_0203246c
    stw     r29,24(r30)
L02037d48:
    lwz     r3,28(r30)
    cmpwi   r3,0
    beq-    L02037d6c
    lwz     r12,0(r3)
    lwz     r0,36(r12)
    mtctr   r0
    li      r4,3
    bctrl
    stw     r29,28(r30)
L02037d6c:
    lwz     r3,32(r30)
    cmpwi   r3,0
    beq-    L02037d90
    lwz     r9,0(r3)
    lwz     r0,20(r9)
    mtctr   r0
    li      r4,3
    bctrl
    stw     r29,32(r30)
L02037d90:
    lwz     r3,36(r30)
    cmpwi   r3,0
    beq-    L02037db4
    lwz     r10,0(r3)
    lwz     r11,68(r10)
    mtctr   r11
    li      r4,3
    bctrl
    stw     r29,36(r30)
L02037db4:
    clrlwi. r9,r31,31
    beq-    L02037dc4
    mr      r3,r30
    bl      ext_026014bc
L02037dc4:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
