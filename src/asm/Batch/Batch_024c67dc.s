# Converted from the disassembly of 0x024c67dc (160 bytes). Name is a placeholder.
    .text
    .globl Batch_024c67dc
Batch_024c67dc:
    mflr    r0
    lis     r9,4124
    stwu    r1,-48(r1)
    lis     r4,4124
    stw     r31,44(r1)
    addi    r9,r9,29036
    mr      r31,r3
    addi    r3,r1,16
    lis     r5,4124
    addi    r4,r4,29016
    lis     r6,4124
    lis     r7,4124
    lis     r8,4124
    addi    r5,r5,29020
    addi    r7,r7,29028
    addi    r6,r6,29024
    addi    r8,r8,29032
    stw     r0,52(r1)
    bl      ext_0262c820
    lis     r0,4108
    addi    r3,r31,16
    addic   r0,r0,-30220
    addi    r4,r1,16
    stw     r0,12(r1)
    bl      ext_0262cfc0
    lbz     r5,39(r1)
    lbz     r4,35(r1)
    addi    r3,r1,8
    bl      ext_0254c494
    lwz     r12,4(r31)
    lwz     r0,76(r12)
    mtctr   r0
    mr      r3,r31
    addi    r4,r1,8
    bctrl
    lwz     r0,52(r1)
    lwz     r31,44(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
