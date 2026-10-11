# Converted from the disassembly of 0x0201f7ec (300 bytes). Name is a placeholder.
    .text
    .globl Batch_0201f7ec
Batch_0201f7ec:
    mflr    r0
    stwu    r1,-40(r1)
    stw     r31,36(r1)
    stw     r30,32(r1)
    mr      r30,r3
    mr      r31,r4
    lis     r5,4096
    mr      r4,r30
    mr      r3,r31
    stw     r29,28(r1)
    addi    r5,r5,9464
    stw     r0,44(r1)
    bl      ext_0254a90c
    addi    r3,r1,16
    bl      ext_0254a2ac
    lis     r5,4096
    addi    r4,r1,16
    addi    r5,r5,9476
    mr      r3,r31
    bl      ext_0254a65c
    cmpwi   r3,0
    beq-    L0201f8fc
    addi    r3,r1,16
    bl      ext_0254afdc
    clrlwi  r4,r3,16
    addi    r3,r30,12
    li      r5,0
    li      r6,4
    sth     r4,8(r30)
    bl      ext_02601af8
    lhz     r0,8(r30)
    li      r29,0
    cmplw   r29,r0
    bge-    L0201f8fc
L0201f874:
    addi    r3,r1,8
    bl      ext_0254a2ac
    mr      r5,r29
    addi    r3,r1,16
    addi    r4,r1,8
    bl      ext_0254ac4c
    li      r3,836
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0201f8a8
    mr      r3,r31
    bl      ext_02102ba0
    mr      r31,r3
L0201f8a8:
    lwz     r9,820(r31)
    lwz     r10,12(r9)
    mtctr   r10
    mr      r3,r31
    addi    r4,r1,8
    bctrl
    lwz     r12,12(r30)
    lwz     r0,16(r30)
    cmpw    r12,r0
    bge-    L0201f8e8
    lwz     r9,20(r30)
    slwi    r12,r12,2
    stwx    r31,r12,r9
    lwz     r10,12(r30)
    addi    r10,r10,1
    stw     r10,12(r30)
L0201f8e8:
    addi    r29,r29,1
    lhz     r0,8(r30)
    clrlwi  r29,r29,16
    cmplw   r29,r0
    blt+    L0201f874
L0201f8fc:
    lwz     r29,28(r1)
    lwz     r0,44(r1)
    lwz     r30,32(r1)
    mtlr    r0
    lwz     r31,36(r1)
    addi    r1,r1,40
    blr
