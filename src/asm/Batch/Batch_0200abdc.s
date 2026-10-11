# Converted from the disassembly of 0x0200abdc (180 bytes). Name is a placeholder.
    .text
    .globl Batch_0200abdc
Batch_0200abdc:
    lwz     r0,20(r3)
    lwz     r7,28(r3)
    slwi    r6,r0,2
    add     r10,r7,r6
    cmplw   r7,r10
    lwz     r0,0(r4)
    bne-    L0200ac0c
    lwz     r5,84(r3)
    cmplw   r5,r0
    addi    r11,r3,80
    beq-    L0200ac64
    b       L0200ac84
L0200ac0c:
    lwz     r11,0(r7)
    mr      r9,r11
    lwz     r8,4(r9)
    cmplw   r8,r0
    bne-    L0200ac48
    lbz     r12,8(r9)
    lbz     r5,4(r4)
    cmplw   r12,r5
    bne-    L0200ac48
    lbz     r6,9(r9)
    lbz     r8,5(r4)
    cmplw   r6,r8
    bne-    L0200ac48
    mr      r3,r11
    blr
L0200ac48:
    addi    r7,r7,4
    cmplw   r7,r10
    bne+    L0200ac0c
    lwz     r5,84(r3)
    cmplw   r5,r0
    addi    r11,r3,80
    bne-    L0200ac84
L0200ac64:
    lbz     r6,8(r11)
    lbz     r7,4(r4)
    cmplw   r6,r7
    bne-    L0200ac84
    lbz     r8,9(r11)
    lbz     r9,5(r4)
    cmplw   r8,r9
    beq-    L0200ac88
L0200ac84:
    li      r11,0
L0200ac88:
    mr      r3,r11
    blr
