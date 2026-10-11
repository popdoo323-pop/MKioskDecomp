# Converted from the disassembly of 0x0201760c (100 bytes). Name is a placeholder.
    .text
    .globl Batch_0201760c
Batch_0201760c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bne-    L0201763c
    li      r3,172
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02017654
L0201763c:
    mr      r3,r31
    mr      r4,r30
    bl      ext_02017b20
    lis     r0,4096
    addic   r0,r0,5392
    stw     r0,0(r31)
L02017654:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
