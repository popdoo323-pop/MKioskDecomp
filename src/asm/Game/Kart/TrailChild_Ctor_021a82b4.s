# Converted from the disassembly of 0x021a82b4 (512 bytes). Name is a placeholder.
    .text
    .globl TrailChild_Ctor_021a82b4
TrailChild_Ctor_021a82b4:
    stwu    r1,-40(r1)
    mflr    r0
    stmw    r26,16(r1)
    mr.     r31,r3
    mr      r30,r5
    stw     r0,44(r1)
    mr      r29,r4
    bne-    L021a82e4
    li      r3,700
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L021a8428
L021a82e4:
    mr      r3,r31
    mr      r4,r29
    bl      ext_021a6ce0
    lis     r0,4098
    lis     r6,539
    addi    r3,r31,488
    addic   r0,r0,-2372
    addi    r6,r6,-26748
    li      r4,2
    li      r5,80
    stw     r0,0(r31)
    bl      ext_0292e4a4
    li      r28,0
    li      r9,-1
    stw     r28,696(r31)
    li      r7,1
    stw     r9,660(r31)
    cmpwi   r30,0
    stb     r28,664(r31)
    stw     r28,668(r31)
    stw     r28,676(r31)
    stb     r28,688(r31)
    stb     r28,682(r31)
    stw     r28,652(r31)
    stw     r28,692(r31)
    stw     r28,672(r31)
    stb     r28,680(r31)
    stw     r28,656(r31)
    stb     r28,681(r31)
    beq-    L021a8360
    li      r7,2
L021a8360:
    lis     r11,27
    lis     r0,4098
    lis     r12,4098
    addi    r11,r11,13107
    stw     r7,648(r31)
    addi    r12,r12,-2568
    mullw   r10,r7,r11
    li      r6,1
    li      r5,0
    addic   r0,r0,-2424
    stw     r12,12(r1)
    addis   r10,r10,1
    mr      r7,r5
    addi    r4,r1,8
    addi    r3,r10,-32768
    stw     r0,8(r1)
    bl      ext_026197d4
    mr.     r4,r3
    li      r30,1
    stw     r3,652(r31)
    lis     r27,4117
    beq-    L021a83c4
    lwz     r3,9820(r27)
    bl      ext_0261c940
    mr      r30,r3
L021a83c4:
    lwz     r9,648(r31)
    li      r29,0
    cmpw    r29,r9
    bge-    L021a83fc
    addi    r26,r31,488
L021a83d8:
    lwz     r4,32(r31)
    mr      r5,r29
    mr      r3,r26
    bl      ext_021a8248
    lwz     r11,648(r31)
    addi    r29,r29,1
    cmpw    r29,r11
    addi    r26,r26,80
    blt+    L021a83d8
L021a83fc:
    lwz     r0,672(r31)
    cmpwi   r0,2
    beq-    L021a8414
    stw     r28,676(r31)
    li      r0,2
    stw     r0,672(r31)
L021a8414:
    cmpwi   r30,1
    beq-    L021a8428
    lwz     r3,9820(r27)
    mr      r4,r30
    bl      ext_0261c940
L021a8428:
    mr      r3,r31
    lmw     r26,16(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
    lis     r11,4098
    cmplwi  r3,15
    lfs     f1,-2412(r11)
    bge-    L021a846c
    cmplwi  r3,5
    bltlr-
    cmplwi  r3,7
    ble-    L021a849c
    cmplwi  r3,12
    ble-    L021a84a8
    blr
L021a846c:
    cmplwi  r3,24
    ble-    L021a849c
    cmplwi  r3,27
    bltlr-
    cmplwi  r3,29
    blt-    L021a84a8
    bnelr-
    cmplwi  r4,0
    beq-    L021a849c
    cmplwi  r4,2
    beq-    L021a84a8
    blr
L021a849c:
    lis     r12,4098
    lfs     f1,-2408(r12)
    blr
L021a84a8:
    lis     r12,4098
    lfs     f1,-2404(r12)
    blr
