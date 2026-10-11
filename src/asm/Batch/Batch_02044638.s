# Converted from the disassembly of 0x02044638 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_02044638
Batch_02044638:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    beq-    L02044688
    lis     r0,4096
    addic   r0,r0,22792
    mr      r3,r31
    stw     r0,0(r31)
    bl      ext_020445d8
    mr      r3,r31
    li      r4,0
    bl      ext_02630348
    clrlwi. r0,r30,31
    beq-    L02044688
    mr      r3,r31
    bl      ext_026014bc
L02044688:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
