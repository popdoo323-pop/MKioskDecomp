# Converted from the disassembly of 0x0203985c (200 bytes). Name is a placeholder.
    .text
    .globl Batch_0203985c
Batch_0203985c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr.     r31,r3
    stw     r0,28(r1)
    bne-    L02039884
    li      r3,68
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0203990c
L02039884:
    mr      r3,r31
    bl      ext_026340f0
    lis     r0,4096
    lis     r4,4120
    mr      r3,r31
    addic   r0,r0,17592
    addi    r4,r4,-11404
    stw     r0,0(r31)
    bl      ext_02634484
    lis     r4,4120
    mr      r3,r31
    addi    r4,r4,-11396
    bl      ext_02634470
    lis     r12,4096
    lfs     f1,17648(r12)
    mr      r3,r31
    bl      ext_02634460
    lis     r4,3
    mr      r3,r31
    addi    r4,r4,-32768
    bl      ext_02634468
    lis     r11,4096
    lis     r3,16
    lis     r0,4096
    addi    r11,r11,17536
    addi    r4,r1,8
    li      r5,0
    stw     r11,12(r1)
    addic   r0,r0,17652
    mr      r7,r5
    li      r6,1
    stw     r0,8(r1)
    bl      ext_026197d4
    stw     r3,64(r31)
L0203990c:
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
