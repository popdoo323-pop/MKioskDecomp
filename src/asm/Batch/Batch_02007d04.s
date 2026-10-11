# Converted from the disassembly of 0x02007d04 (272 bytes). Name is a placeholder.
    .text
    .globl Batch_02007d04
Batch_02007d04:
    stwu    r1,-40(r1)
    stmw    r27,20(r1)
    mflr    r0
    stw     r0,44(r1)
    mr      r29,r4
    lwz     r12,8(r29)
    cmplwi  r12,1
    mr      r28,r3
    blt-    L02007d38
    beq-    L02007d58
    cmpwi   r12,1
    beq-    L02007d7c
    b       L02007d88
L02007d38:
    lwz     r12,16(r29)
    lwz     r0,44(r12)
    mtctr   r0
    mr      r3,r29
    mr      r4,r28
    bctrl
    lwz     r12,8(r29)
    b       L02007d74
L02007d58:
    lwz     r8,0(r28)
    lwz     r9,100(r8)
    mtctr   r9
    lwz     r4,12(r29)
    mr      r3,r28
    bctrl
    lwz     r12,8(r29)
L02007d74:
    cmpwi   r12,1
    bne-    L02007d88
L02007d7c:
    lbz     r10,44(r28)
    cmpwi   r10,0
    bne-    L02007e00
L02007d88:
    lwz     r11,16(r29)
    lwz     r0,20(r11)
    mtctr   r0
    lwz     r27,4(r29)
    mr      r4,r28
    mr      r3,r29
    bctrl
    lwz     r31,40(r28)
    stw     r31,8(r1)
    lwz     r7,36(r28)
    slwi    r0,r7,2
    add     r30,r31,r0
    cmplw   r31,r30
    beq-    L02007de4
L02007dc0:
    lwz     r3,0(r31)
    lwz     r8,0(r3)
    lwz     r9,92(r8)
    mtctr   r9
    mr      r4,r29
    bctrl
    addi    r31,r31,4
    cmplw   r31,r30
    bne+    L02007dc0
L02007de4:
    lwz     r10,16(r29)
    lwz     r11,28(r10)
    mtctr   r11
    mr      r3,r29
    mr      r4,r28
    mr      r5,r27
    bctrl
L02007e00:
    lmw     r27,20(r1)
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
