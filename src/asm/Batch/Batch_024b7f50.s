# Converted from the disassembly of 0x024b7f50 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_024b7f50
Batch_024b7f50:
    stwu    r1,-32(r1)
    mflr    r0
    stmw    r27,12(r1)
    li      r31,0
    mr      r28,r31
    li      r30,5
    li      r27,1
    stw     r0,36(r1)
    mr      r29,r3
L024b7f74:
    lwz     r3,0(r29)
    mr      r4,r28
    bl      ext_0272fd00
    cmpwi   r3,0
    slw     r0,r27,r28
    beq-    L024b7fa0
    addic.  r30,r30,-1
    addi    r28,r28,1
    or      r31,r31,r0
    bne+    L024b7f74
    b       L024b7fb0
L024b7fa0:
    addic.  r30,r30,-1
    addi    r28,r28,1
    andc    r31,r31,r0
    bne+    L024b7f74
L024b7fb0:
    lwz     r11,64(r29)
    lwz     r12,140(r11)
    addi    r3,r29,116
    sth     r31,64(r12)
    bl      ext_020db650
    lmw     r27,12(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
