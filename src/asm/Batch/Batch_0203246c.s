# Converted from the disassembly of 0x0203246c (124 bytes). Name is a placeholder.
    .text
    .globl Batch_0203246c
Batch_0203246c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L020324d0
    lwz     r3,8(r30)
    cmpwi   r3,0
    beq-    L020324b4
    lwz     r10,12(r3)
    lwz     r11,12(r10)
    mtctr   r11
    li      r4,3
    bctrl
    li      r0,0
    stw     r0,8(r30)
L020324b4:
    addi    r3,r30,12
    li      r4,2
    bl      ext_02591f8c
    clrlwi. r0,r31,31
    beq-    L020324d0
    mr      r3,r30
    bl      ext_026014bc
L020324d0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
