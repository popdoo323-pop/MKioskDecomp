# Converted from the disassembly of 0x0203c3cc (296 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c3cc
Batch_0203c3cc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r29,12(r1)
    stw     r0,28(r1)
    bne-    L0203c400
    li      r3,52
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0203c4d4
L0203c400:
    mr      r3,r31
    mr      r4,r30
    bl      ext_02054620
    addic.  r29,r31,8
    li      r30,0
    bne-    L0203c428
    li      r3,24
    bl      ext_0260128c
    mr.     r29,r3
    beq-    L0203c458
L0203c428:
    mr.     r3,r29
    bne-    L0203c440
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0203c44c
L0203c440:
    stw     r3,4(r3)
    stw     r30,8(r3)
    stw     r3,0(r3)
L0203c44c:
    stw     r30,16(r29)
    stw     r30,12(r29)
    stw     r30,20(r29)
L0203c458:
    lis     r12,4096
    stw     r30,36(r31)
    li      r0,-1
    lfs     f0,19232(r12)
    li      r3,0
    stw     r30,32(r31)
    mr      r5,r3
    stw     r0,40(r31)
    li      r4,4
    stfs    f0,44(r31)
    bl      ext_0205d108
    li      r4,0
    li      r5,4
    stw     r3,32(r31)
    li      r3,1008
    bl      ext_02601650
    cmpwi   r3,0
    beq-    L0203c4d4
    li      r0,3
    li      r9,0
    addi    r10,r3,252
    mtctr   r0
    stw     r3,20(r31)
L0203c4b4:
    stwx    r10,r3,r9
    addi    r9,r9,252
    addi    r10,r10,252
    bdnz+   L0203c4b4
    stw     r30,756(r3)
    li      r0,4
    stw     r3,24(r31)
    stw     r0,28(r31)
L0203c4d4:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
