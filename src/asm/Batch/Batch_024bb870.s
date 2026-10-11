# Converted from the disassembly of 0x024bb870 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_024bb870
Batch_024bb870:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L024bb894
    li      r3,4
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024bb8a0
L024bb894:
    li      r12,-1
    sth     r12,0(r3)
    sth     r12,2(r3)
L024bb8a0:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
