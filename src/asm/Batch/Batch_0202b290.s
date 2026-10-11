# Converted from the disassembly of 0x0202b290 (464 bytes). Name is a placeholder.
    .text
    .globl Batch_0202b290
Batch_0202b290:
    stwu    r1,-48(r1)
    stmw    r27,12(r1)
    mflr    r0
    stfd    f31,32(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,40(r1)
    stw     r0,52(r1)
    mr      r29,r3
    bl      ext_020150ac
    stw     r3,8(r29)
    lwz     r0,184(r3)
    cmplwi  r0,1
    blt-    L0202b318
    beq-    L0202b32c
    cmplwi  r0,2
    beq-    L0202b340
    lwz     r6,4(r29)
    lwz     r3,84(r6)
    bl      ext_02185cb4
    lwz     r4,4(r29)
    lis     r28,4120
    lfsu    f1,-12920(r28)
    bl      ext_02080308
    lis     r5,4096
    li      r30,0
    lfs     f31,13920(r5)
    lwz     r6,20(r29)
    stfs    f31,332(r29)
    cmpw    r30,r6
    stfs    f31,324(r29)
    stw     r3,12(r29)
    stfs    f31,328(r29)
    bge-    L0202b42c
    b       L0202b394
L0202b318:
    li      r0,40
    li      r12,65
    stw     r0,316(r29)
    stw     r12,320(r29)
    b       L0202b350
L0202b32c:
    li      r9,60
    li      r12,80
    stw     r9,316(r29)
    stw     r12,320(r29)
    b       L0202b350
L0202b340:
    li      r0,80
    li      r12,95
    stw     r0,316(r29)
    stw     r12,320(r29)
L0202b350:
    lwz     r6,4(r29)
    lwz     r3,84(r6)
    bl      ext_02185cb4
    lwz     r4,4(r29)
    lis     r28,4120
    lfsu    f1,-12920(r28)
    bl      ext_02080308
    lis     r5,4096
    li      r30,0
    lfs     f31,13920(r5)
    lwz     r6,20(r29)
    stfs    f31,332(r29)
    cmpw    r30,r6
    stfs    f31,324(r29)
    stw     r3,12(r29)
    stfs    f31,328(r29)
    bge-    L0202b42c
L0202b394:
    addi    r27,r29,336
    li      r31,0
L0202b39c:
    lwz     r10,4(r29)
    lwz     r3,84(r10)
    bl      ext_02185cb4
    lwz     r4,4(r29)
    lfs     f1,0(r28)
    bl      ext_02080308
    lwz     r0,16(r29)
    lwz     r7,20(r29)
    cmpw    r0,r7
    bge-    L0202b3dc
    lwz     r9,24(r29)
    slwi    r8,r0,2
    stwx    r3,r8,r9
    lwz     r10,16(r29)
    addi    r10,r10,1
    stw     r10,16(r29)
L0202b3dc:
    cmplwi  r30,2
    bge-    L0202b40c
    add     r12,r27,r31
    stfs    f31,8(r12)
    stfs    f31,0(r12)
    stfs    f31,4(r12)
    lwz     r11,20(r29)
    addi    r30,r30,1
    cmpw    r30,r11
    addi    r31,r31,12
    blt+    L0202b39c
    b       L0202b42c
L0202b40c:
    stfs    f31,8(r27)
    stfs    f31,0(r27)
    stfs    f31,4(r27)
    lwz     r11,20(r29)
    addi    r30,r30,1
    cmpw    r30,r11
    addi    r31,r31,12
    blt+    L0202b39c
L0202b42c:
    li      r0,1
    mr      r3,r29
    li      r4,0
    stb     r0,361(r29)
    bl      ext_0202b1c8
    lmw     r27,12(r1)
    lfs     f31,40(r1)
    lfd     f31,32(r1)
    isync
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
