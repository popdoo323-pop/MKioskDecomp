# Converted from the disassembly of 0x0200c74c (196 bytes). Name is a placeholder.
    .text
    .globl Batch_0200c74c
Batch_0200c74c:
    stwu    r1,-32(r1)
    stmw    r27,12(r1)
    mflr    r0
    stw     r0,36(r1)
    mr      r31,r3
    lwz     r8,0(r31)
    lwz     r27,8(r31)
    slwi    r0,r8,2
    add     r10,r27,r0
    li      r30,-1
    cmplw   r27,r10
    li      r28,0
    beq-    L0200c7ec
    li      r29,1
L0200c784:
    lwz     r3,0(r27)
    lwz     r12,28(r3)
    lwz     r0,20(r12)
    mtctr   r0
    bctrl
    cmpwi   r3,0
    beq-    L0200c7cc
    lwz     r10,0(r27)
    lwz     r7,0(r10)
    cmpwi   r7,3
    bne-    L0200c7c4
    lbz     r0,13(r10)
    addi    r4,r1,8
    mr      r3,r31
    stb     r0,8(r1)
    bl      ext_0200b260
L0200c7c4:
    slw     r0,r29,r28
    andc    r30,r30,r0
L0200c7cc:
    lwz     r7,0(r31)
    lwz     r11,8(r31)
    slwi    r12,r7,2
    addi    r27,r27,4
    add     r9,r11,r12
    cmplw   r27,r9
    addi    r28,r28,1
    bne+    L0200c784
L0200c7ec:
    mr      r3,r30
    li      r4,1
    bl      ext_0261ff0c
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    clrlwi  r3,r3,24
    blr
