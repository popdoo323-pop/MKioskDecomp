# Converted from the disassembly of 0x0200644c (84 bytes). Name is a placeholder.
    .text
    .globl Batch_0200644c
Batch_0200644c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L02006474
    li      r3,316
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02006488
L02006474:
    mr      r3,r31
    bl      ext_0202867c
    lis     r0,4096
    addic   r0,r0,1268
    stw     r0,0(r31)
L02006488:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
