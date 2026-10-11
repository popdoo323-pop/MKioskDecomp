# Converted from the disassembly of 0x020417f4 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_020417f4
Batch_020417f4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L0204185c
    lis     r0,4096
    lis     r9,4096
    addic   r0,r0,21740
    addi    r9,r9,22052
    stw     r0,112(r30)
    lis     r0,4096
    stw     r9,32(r30)
    addic   r0,r0,22068
    lis     r12,4117
    li      r4,0
    stw     r0,200(r30)
    mr      r3,r30
    stb     r4,-28976(r12)
    bl      ext_0245b624
    clrlwi. r10,r31,31
    beq-    L0204185c
    mr      r3,r30
    bl      ext_026014bc
L0204185c:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
