# Converted from the disassembly of 0x02039988 (344 bytes). Name is a placeholder.
    .text
    .globl Batch_02039988
Batch_02039988:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r29,44(r1)
    stw     r30,48(r1)
    stw     r31,52(r1)
    stw     r0,60(r1)
    mr      r29,r3
    lwz     r3,64(r29)
    cmpwi   r3,0
    bne-    L020399f8
    lis     r11,4096
    lis     r3,16
    li      r5,0
    addi    r11,r11,17536
    lis     r10,4096
    addi    r4,r1,32
    stw     r11,36(r1)
    addi    r10,r10,17676
    mr      r7,r5
    li      r6,1
    stw     r10,32(r1)
    bl      ext_026197d4
    stw     r3,64(r29)
    bl      ext_02421764
    mr.     r31,r3
    lwz     r12,64(r29)
    bne-    L02039a18
    b       L02039a1c
L020399f8:
    lwz     r10,12(r3)
    lwz     r0,92(r10)
    mtctr   r0
    bctrl
    bl      ext_02421764
    mr.     r31,r3
    lwz     r12,64(r29)
    beq-    L02039a1c
L02039a18:
    addi    r31,r31,296
L02039a1c:
    stw     r12,8(r1)
    li      r0,0
    li      r12,1
    stb     r0,28(r1)
    addi    r0,r1,40
    li      r9,32
    stb     r12,20(r1)
    mr      r3,r31
    lis     r4,4120
    stw     r9,12(r1)
    li      r9,9
    stw     r0,16(r1)
    addi    r4,r4,-11388
    addi    r5,r1,8
    stw     r9,24(r1)
    lwz     r0,24(r1)
    bl      ext_0243a290
    mr      r30,r3
    bl      ext_02041f68
    bl      ext_020428fc
    lwz     r5,64(r29)
    mr      r4,r30
    bl      ext_02054cf8
    lis     r4,4120
    mr      r3,r31
    addi    r5,r1,8
    addi    r4,r4,-11380
    bl      ext_0243a290
    mr      r31,r3
    bl      ext_02041f68
    bl      ext_0204290c
    mr      r4,r31
    bl      ext_02907128
    neg     r0,r3
    andc    r10,r0,r3
    lwz     r3,64(r29)
    lwz     r12,12(r3)
    lwz     r8,44(r12)
    mtctr   r8
    srwi    r31,r10,31
    bctrl
    lwz     r29,44(r1)
    lwz     r0,60(r1)
    mr      r3,r31
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
