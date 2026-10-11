# Converted from the disassembly of 0x024df108 (464 bytes). Name is a placeholder.
    .text
    .globl Batch_024df108
Batch_024df108:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    mr      r30,r3
    stw     r31,20(r1)
    addi    r31,r30,200
    mr      r3,r31
    stw     r29,12(r1)
    stw     r0,28(r1)
    bl      ext_024dc060
    lwz     r0,256(r30)
    cmplwi  r0,1
    mr      r29,r3
    blt-    L024df2bc
    cmplwi  r0,3
    blt-    L024df158
    beq-    L024df1c4
    cmplwi  r0,6
    blt-    L024df17c
    bne-    L024df2bc
L024df158:
    mr      r3,r30
    bl      ext_024dc6f8
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024df17c:
    cmpwi   r29,0
    beq-    L024df2bc
    mr      r3,r29
    mr      r4,r30
    bl      ext_0248e530
    lwz     r12,196(r29)
    lwz     r5,220(r12)
    mtctr   r5
    mr      r3,r29
    mr      r4,r30
    bctrl
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024df1c4:
    cmpwi   r29,0
    beq-    L024df200
    lwz     r3,176(r29)
    cmpwi   r3,0
    beq-    L024df1dc
    bl      ext_02488908
L024df1dc:
    mr      r3,r29
    mr      r4,r30
    bl      ext_0248e530
    lwz     r6,196(r29)
    lwz     r0,220(r6)
    mtctr   r0
    mr      r3,r29
    mr      r4,r30
    bctrl
L024df200:
    lwz     r8,196(r30)
    lwz     r10,60(r8)
    mtctr   r10
    mr      r3,r30
    bctrl
    lwz     r11,76(r30)
    cmpwi   r11,7
    blt-    L024df2bc
    lwz     r10,280(r30)
    cmpwi   r10,0
    ble-    L024df2ac
    lwz     r12,276(r30)
    add     r11,r12,r10
    lwz     r0,272(r30)
    addi    r9,r11,-1
    cmpw    r9,r0
    lwz     r5,268(r30)
    blt-    L024df24c
    subf    r9,r0,r9
L024df24c:
    mulli   r0,r9,68
    add     r4,r5,r0
    cmplw   r31,r4
    beq-    L024df270
    li      r6,0
    li      r5,68
    mr      r3,r31
    bl      ext_029aacf0
    lwz     r10,280(r30)
L024df270:
    addi    r6,r10,-1
    li      r7,1
    stw     r6,280(r30)
    stw     r7,56(r31)
    lwz     r8,56(r31)
    mr      r3,r30
    stb     r7,1372(r30)
    bl      ext_024dc6f8
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L024df2ac:
    mr      r3,r30
    bl      ext_024dd900
    mr      r3,r30
    bl      ext_024dca6c
L024df2bc:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
