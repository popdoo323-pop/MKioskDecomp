# Converted from the disassembly of 0x0200ddd8 (412 bytes). Name is a placeholder.
    .text
    .globl Batch_0200ddd8
Batch_0200ddd8:
    stwu    r1,-48(r1)
    stmw    r24,16(r1)
    mflr    r0
    stw     r0,52(r1)
    mr      r29,r3
    lwz     r28,104(r29)
    lwz     r12,108(r28)
    lwz     r9,20(r12)
    addi    r26,r28,80
    mtctr   r9
    mr      r3,r26
    mr      r31,r4
    mr      r30,r5
    bctrl
    lwz     r12,108(r28)
    lwz     r5,20(r12)
    lwz     r11,0(r28)
    mtctr   r5
    add     r25,r11,r3
    mr      r3,r26
    lwz     r28,104(r29)
    bctrl
    lwz     r7,216(r28)
    lbz     r24,0(r31)
    add     r0,r7,r3
    cmpwi   r0,1
    extsb   r24,r24
    bne-    L0200de64
    lwz     r8,100(r29)
    lwz     r0,156(r8)
    mtctr   r0
    mr      r3,r29
    bctrl
    cmpwi   r3,0
    bne-    L0200df5c
L0200de64:
    slwi.   r27,r25,1
    ble-    L0200df5c
    addi    r28,r25,-1
L0200de70:
    addi    r10,r24,1
    lwz     r12,28(r26)
    divw    r11,r10,r25
    lwz     r0,20(r12)
    mtctr   r0
    mullw   r11,r11,r25
    subf    r24,r11,r10
    mr      r3,r26
    extsb   r24,r24
    bctrl
    cmpwi   r3,0
    beq-    L0200dec0
    cmplw   r24,r28
    bne-    L0200dec0
    lbz     r31,13(r26)
    extsb   r31,r31
    cmpwi   r30,0
    stb     r31,8(r1)
    beq-    L0200ded0
    b       L0200dee0
L0200dec0:
    mr      r31,r24
    cmpwi   r30,0
    stb     r31,8(r1)
    bne-    L0200dee0
L0200ded0:
    lbz     r7,12(r29)
    extsb   r7,r7
    cmplw   r7,r31
    beq-    L0200df54
L0200dee0:
    cmpwi   r31,-1
    beq-    L0200df54
    lwz     r3,104(r29)
    addi    r4,r1,8
    bl      ext_0200b5e4
    lbz     r31,8(r1)
    cmpwi   r3,0
    extsb   r31,r31
    bne-    L0200df18
    lbz     r0,13(r26)
    extsb   r0,r0
    cmplw   r0,r31
    beq-    L0200df3c
    b       L0200df54
L0200df18:
    lbz     r10,13(r26)
    extsb   r10,r10
    cmplw   r10,r31
    beq-    L0200df3c
    lwz     r3,104(r29)
    addi    r4,r1,8
    bl      ext_0200b494
    cmpwi   r3,0
    bne-    L0200df54
L0200df3c:
    mr      r3,r31
    lmw     r24,16(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    blr
L0200df54:
    addic.  r27,r27,-1
    bne+    L0200de70
L0200df5c:
    lmw     r24,16(r1)
    lwz     r0,52(r1)
    mtlr    r0
    addi    r1,r1,48
    li      r3,-1
    blr
