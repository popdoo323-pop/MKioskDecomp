# Converted from the disassembly of 0x020441b8 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_020441b8
Batch_020441b8:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r30,r5
    mr.     r31,r3
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bne-    L020441f0
    li      r3,16
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0204420c
L020441f0:
    mr      r3,r31
    bl      ext_02044064
    lis     r0,4096
    stw     r30,8(r31)
    addic   r0,r0,22516
    stw     r29,0(r31)
    stw     r0,12(r31)
L0204420c:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
