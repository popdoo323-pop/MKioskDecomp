# Converted from the disassembly of 0x020468b4 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_020468b4
Batch_020468b4:
    mflr    r0
    stw     r0,4(r1)
    cmpwi   r3,0
    stwu    r1,-8(r1)
    bne-    L020468d8
    li      r3,24
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L020468fc
L020468d8:
    lis     r12,4096
    lfs     f0,23476(r12)
    li      r12,0
    stb     r12,16(r3)
    stfs    f0,12(r3)
    stfs    f0,8(r3)
    stfs    f0,0(r3)
    stw     r12,20(r3)
    stfs    f0,4(r3)
L020468fc:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
