# Converted from the disassembly of 0x024c6418 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6418
Batch_024c6418:
    mflr    r0
    lis     r9,4124
    stwu    r1,-56(r1)
    lis     r4,4124
    stw     r31,52(r1)
    addi    r9,r9,29036
    mr      r31,r3
    addi    r3,r1,20
    lis     r5,4124
    addi    r4,r4,29016
    lis     r6,4124
    lis     r7,4124
    lis     r8,4124
    addi    r5,r5,29020
    addi    r7,r7,29028
    addi    r6,r6,29024
    addi    r8,r8,29032
    stw     r0,60(r1)
    bl      ext_0262c820
    lis     r0,4108
    addi    r3,r31,16
    addic   r0,r0,-30172
    addi    r4,r1,20
    stw     r0,12(r1)
    bl      ext_0262cfc0
    li      r7,0
    lbz     r6,31(r1)
    addi    r3,r1,8
    lbz     r5,27(r1)
    mr      r8,r7
    lhz     r4,22(r1)
    bl      ext_0254cdd8
    lwz     r12,4(r31)
    lwz     r11,76(r12)
    mtctr   r11
    mr      r3,r31
    addi    r4,r1,8
    bctrl
    lwz     r0,60(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
