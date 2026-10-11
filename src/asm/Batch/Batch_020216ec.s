# Converted from the disassembly of 0x020216ec (68 bytes). Name is a placeholder.
    .text
    .globl Batch_020216ec
Batch_020216ec:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L02021710
    li      r3,4
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02021720
L02021710:
    lis     r0,0
    ori     r0,r0,65535
    sth     r0,2(r3)
    sth     r0,0(r3)
L02021720:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
