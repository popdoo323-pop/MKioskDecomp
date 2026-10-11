# Converted from the disassembly of 0x0202a784 (64 bytes). Name is a placeholder.
    .text
    .globl Batch_0202a784
Batch_0202a784:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L0202a7a8
    li      r3,8
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0202a7b4
L0202a7a8:
    li      r12,0
    stw     r12,4(r3)
    stw     r12,0(r3)
L0202a7b4:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
