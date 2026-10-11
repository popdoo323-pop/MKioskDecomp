# Converted from the disassembly of 0x02005ef0 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_02005ef0
Batch_02005ef0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    beq-    L02005f38
    lis     r0,4096
    mr      r3,r31
    addic   r0,r0,380
    li      r4,0
    stw     r0,24(r31)
    bl      ext_0270bc58
    clrlwi. r0,r30,31
    beq-    L02005f38
    mr      r3,r31
    bl      ext_026014bc
L02005f38:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
