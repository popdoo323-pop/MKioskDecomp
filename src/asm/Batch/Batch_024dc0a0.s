# Converted from the disassembly of 0x024dc0a0 (472 bytes). Name is a placeholder.
    .text
    .globl Batch_024dc0a0
Batch_024dc0a0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r28,8(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr.     r31,r3
    stw     r0,28(r1)
    bne-    L024dc0d4
    li      r3,1476
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024dc254
L024dc0d4:
    mr      r3,r31
    bl      ext_0248c63c
    lis     r0,4107
    li      r29,0
    addic   r0,r0,-12784
    addic.  r3,r31,200
    stw     r0,196(r31)
    bne-    L024dc104
    li      r3,68
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024dc11c
L024dc104:
    stw     r29,12(r3)
    stw     r29,48(r3)
    stw     r29,4(r3)
    stw     r29,60(r3)
    stw     r29,56(r3)
    bl      ext_024dbfc0
L024dc11c:
    addic.  r30,r31,268
    bne-    L024dc134
    li      r3,1104
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L024dc194
L024dc134:
    mr.     r3,r30
    bne-    L024dc14c
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024dc15c
L024dc14c:
    stw     r29,4(r3)
    stw     r29,8(r3)
    stw     r29,0(r3)
    stw     r29,12(r3)
L024dc15c:
    lis     r6,590
    addi    r28,r30,16
    li      r4,16
    addi    r6,r6,-1676
    mr      r3,r28
    li      r5,68
    bl      ext_0292e4a4
    cmpwi   r28,0
    beq-    L024dc194
    stw     r28,0(r30)
    li      r0,16
    stw     r29,8(r30)
    stw     r0,4(r30)
    stw     r29,12(r30)
L024dc194:
    stb     r29,1372(r31)
    li      r0,1
    stw     r29,1396(r31)
    li      r5,12
    stb     r0,1381(r31)
    addi    r3,r31,1408
    stb     r0,1449(r31)
    li      r4,0
    stb     r0,1380(r31)
    stb     r29,1448(r31)
    stw     r29,1452(r31)
    stb     r29,1373(r31)
    stw     r29,1376(r31)
    stb     r29,1473(r31)
    stw     r29,1404(r31)
    stw     r29,1388(r31)
    stw     r29,1384(r31)
    stw     r29,1444(r31)
    stb     r29,1450(r31)
    stb     r29,1460(r31)
    stb     r29,1472(r31)
    bl      ext_029aacf8
    li      r5,12
    li      r4,0
    addi    r3,r31,1420
    bl      ext_029aacf8
    li      r5,12
    li      r4,0
    addi    r3,r31,1432
    bl      ext_029aacf8
    li      r5,4
    li      r4,0
    addi    r3,r31,1456
    bl      ext_029aacf8
    li      r3,32
    bl      ext_0260128c
    mr.     r0,r3
    beq-    L024dc238
    mr      r3,r0
    bl      ext_02492dd4
    mr      r0,r3
L024dc238:
    li      r3,144
    stw     r0,1464(r31)
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024dc250
    bl      ext_02493268
L024dc250:
    stw     r3,1468(r31)
L024dc254:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    mr      r3,r31
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
