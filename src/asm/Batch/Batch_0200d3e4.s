# Converted from the disassembly of 0x0200d3e4 (440 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d3e4
Batch_0200d3e4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    mr      r28,r3
    stw     r31,20(r1)
    addi    r31,r28,204
    stw     r30,16(r1)
    mr      r3,r31
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r4
    bl      ext_0262b790
    lwz     r8,8(r29)
    cmplwi  r8,5
    bge-    L0200d440
    cmplwi  r8,2
    blt-    L0200d460
    beq-    L0200d4cc
    cmplwi  r8,3
    beq-    L0200d4f0
    mr      r3,r31
    bl      ext_0262b7c4
    b       L0200d57c
L0200d440:
    cmplwi  r8,6
    blt-    L0200d514
    beq-    L0200d538
    cmplwi  r8,7
    beq-    L0200d55c
    mr      r3,r31
    bl      ext_0262b7c4
    b       L0200d57c
L0200d460:
    lwz     r12,0(r29)
    lwz     r0,16(r28)
    cmplw   r0,r12
    li      r30,0
    bne-    L0200d498
    lbz     r0,5(r29)
    lbz     r10,21(r28)
    cmplw   r10,r0
    beq-    L0200d498
    stw     r12,16(r28)
    lbz     r11,4(r29)
    stb     r0,21(r28)
    li      r30,1
    stb     r11,20(r28)
L0200d498:
    lwz     r12,100(r28)
    lwz     r0,588(r12)
    mtctr   r0
    mr      r3,r28
    mr      r4,r29
    bctrl
    cmpwi   r30,0
    beq-    L0200d574
    mr      r3,r28
    bl      ext_0200d350
    mr      r3,r31
    bl      ext_0262b7c4
    b       L0200d57c
L0200d4cc:
    lwz     r8,100(r28)
    lwz     r9,588(r8)
    mtctr   r9
    mr      r3,r28
    mr      r4,r29
    bctrl
    mr      r3,r31
    bl      ext_0262b7c4
    b       L0200d57c
L0200d4f0:
    lwz     r10,100(r28)
    lwz     r0,604(r10)
    mtctr   r0
    mr      r3,r28
    mr      r4,r29
    bctrl
    mr      r3,r31
    bl      ext_0262b7c4
    b       L0200d57c
L0200d514:
    lwz     r12,100(r28)
    lwz     r7,620(r12)
    mtctr   r7
    mr      r3,r28
    mr      r4,r29
    bctrl
    mr      r3,r31
    bl      ext_0262b7c4
    b       L0200d57c
L0200d538:
    lwz     r8,100(r28)
    lwz     r9,636(r8)
    mtctr   r9
    mr      r3,r28
    mr      r4,r29
    bctrl
    mr      r3,r31
    bl      ext_0262b7c4
    b       L0200d57c
L0200d55c:
    lwz     r10,100(r28)
    lwz     r0,644(r10)
    mtctr   r0
    mr      r3,r28
    mr      r4,r29
    bctrl
L0200d574:
    mr      r3,r31
    bl      ext_0262b7c4
L0200d57c:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
