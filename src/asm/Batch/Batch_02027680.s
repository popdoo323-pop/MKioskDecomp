# Converted from the disassembly of 0x02027680 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_02027680
Batch_02027680:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L020276a8
    li      r3,64
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L020276c4
L020276a8:
    mr      r3,r31
    bl      ext_020271d0
    lis     r12,4096
    li      r0,2
    addi    r12,r12,11188
    stw     r0,60(r31)
    stw     r12,0(r31)
L020276c4:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
