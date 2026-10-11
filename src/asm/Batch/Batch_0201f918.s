# Converted from the disassembly of 0x0201f918 (664 bytes). Name is a placeholder.
    .text
    .globl Batch_0201f918
Batch_0201f918:
    stwu    r1,-32(r1)
    mflr    r0
    stmw    r27,12(r1)
    mr.     r31,r3
    stw     r0,36(r1)
    bne-    L0201f940
    li      r3,14324
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0201fb98
L0201f940:
    mr      r3,r31
    bl      ext_02410f5c
    lis     r0,4096
    addic.  r30,r31,36
    addic   r0,r0,10456
    li      r28,0
    stw     r0,0(r31)
    bne-    L0201f970
    li      r3,60
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L0201f9a4
L0201f970:
    mr.     r3,r30
    bne-    L0201f988
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0201f994
L0201f988:
    stw     r28,4(r3)
    stw     r28,0(r3)
    stw     r28,8(r3)
L0201f994:
    li      r4,12
    addi    r5,r30,12
    mr      r3,r30
    bl      ext_02601ad4
L0201f9a4:
    addic.  r30,r31,96
    bne-    L0201f9bc
    li      r3,60
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L0201f9f0
L0201f9bc:
    mr.     r3,r30
    bne-    L0201f9d4
    li      r3,12
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0201f9e0
L0201f9d4:
    stw     r28,4(r3)
    stw     r28,0(r3)
    stw     r28,8(r3)
L0201f9e0:
    li      r4,12
    addi    r5,r30,12
    mr      r3,r30
    bl      ext_02601ad4
L0201f9f0:
    lis     r30,514
    addi    r3,r31,156
    li      r4,100
    addi    r6,r30,5936
    li      r5,20
    bl      ext_0292e4a4
    li      r5,20
    li      r4,100
    addi    r6,r30,5936
    addi    r3,r31,2156
    bl      ext_0292e4a4
    li      r5,20
    li      r4,100
    addi    r6,r30,5936
    addi    r3,r31,4156
    bl      ext_0292e4a4
    addi    r3,r31,6156
    addi    r6,r30,5936
    li      r4,100
    li      r5,20
    bl      ext_0292e4a4
    addi    r3,r31,8156
    addi    r6,r30,5936
    li      r4,100
    li      r5,20
    bl      ext_0292e4a4
    lis     r30,514
    li      r4,100
    li      r5,20
    addi    r6,r30,6056
    addi    r3,r31,10156
    bl      ext_0292e4a4
    li      r5,20
    li      r4,100
    addi    r6,r30,6056
    addi    r3,r31,12156
    bl      ext_0292e4a4
    lis     r29,514
    li      r5,4
    addi    r27,r31,14156
    addi    r6,r29,5868
    li      r4,10
    mr      r3,r27
    bl      ext_0292e4a4
    addi    r30,r31,14236
    li      r4,10
    addi    r6,r29,5868
    mr      r3,r30
    li      r5,4
    bl      ext_0292e4a4
    stw     r28,14320(r31)
    lis     r8,4096
    li      r3,0
    lis     r12,4120
    lfs     f0,10340(r8)
    mr      r7,r3
    addi    r12,r12,-13564
    stw     r28,14316(r31)
    addi    r29,r31,14276
    addi    r28,r31,14196
L0201fae0:
    fmr     f13,f0
    add     r9,r27,r7
    mr      r6,r7
L0201faec:
    lhz     r8,0(r12)
    sth     r8,0(r9)
    lhz     r0,2(r12)
    cmplwi  r3,10
    sth     r0,2(r9)
    lhz     r10,0(r12)
    bge-    L0201fb24
    sthx    r10,r30,r6
    lhz     r0,2(r12)
    add     r11,r30,r6
    cmplwi  r3,10
    sth     r0,2(r11)
    blt-    L0201fb38
    b       L0201fb48
L0201fb24:
    sth     r10,0(r30)
    lhz     r0,2(r12)
    cmplwi  r3,10
    sth     r0,2(r30)
    bge-    L0201fb48
L0201fb38:
    cmplwi  r3,10
    stfsx   f13,r28,r6
    blt-    L0201fb54
    b       L0201fb80
L0201fb48:
    cmplwi  r3,10
    stfs    f13,0(r28)
    bge-    L0201fb80
L0201fb54:
    add     r5,r29,r6
    addi    r3,r3,1
    addi    r6,r6,4
    cmpwi   r3,10
    addi    r7,r7,4
    stfs    f13,0(r5)
    bge-    L0201fb98
L0201fb70:
    cmplwi  r3,10
    blt+    L0201fae0
    mr      r9,r27
    b       L0201faec
L0201fb80:
    addi    r3,r3,1
    addi    r6,r6,4
    cmpwi   r3,10
    addi    r7,r7,4
    stfs    f13,0(r29)
    blt+    L0201fb70
L0201fb98:
    mr      r3,r31
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
