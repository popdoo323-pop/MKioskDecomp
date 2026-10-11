# Converted from the disassembly of 0x024df45c (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024df45c
Batch_024df45c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024df484
    li      r3,200
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024df4ac
L024df484:
    mr      r3,r31
    bl      ext_0248c63c
    lis     r12,4107
    mr      r3,r31
    addi    r12,r12,-12528
    li      r4,13
    stw     r12,196(r31)
    bl      ext_0248c860
    li      r0,1
    stb     r0,25(r31)
L024df4ac:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
