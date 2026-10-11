# Converted from the disassembly of 0x0200cc80 (240 bytes). Name is a placeholder.
    .text
    .globl Batch_0200cc80
Batch_0200cc80:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r28,8(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    mr      r29,r3
    lbz     r11,225(r29)
    cmpwi   r11,0
    beq-    L0200cd08
    lwz     r28,180(r29)
    li      r30,0
    cmpw    r30,r28
    bge-    L0200cd4c
    lwz     r31,184(r29)
L0200ccc0:
    cmplw   r30,r28
    bge-    L0200ccdc
    lbzx    r0,r31,r30
    extsb   r0,r0
    cmpwi   r0,-1
    bne-    L0200ccec
    b       L0200cd40
L0200ccdc:
    lbz     r0,0(r31)
    extsb   r0,r0
    cmpwi   r0,-1
    beq-    L0200cd40
L0200ccec:
    cmplw   r30,r28
    bge-    L0200cd2c
    mr      r3,r29
    add     r4,r31,r30
    bl      ext_0200aeb8
    cmpwi   r3,0
    bne-    L0200cd40
L0200cd08:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,0
    blr
L0200cd2c:
    mr      r3,r29
    mr      r4,r31
    bl      ext_0200aeb8
    cmpwi   r3,0
    beq+    L0200cd08
L0200cd40:
    addi    r30,r30,1
    cmpw    r30,r28
    blt+    L0200ccc0
L0200cd4c:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,1
    blr
