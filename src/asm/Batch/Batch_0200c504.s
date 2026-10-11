# Converted from the disassembly of 0x0200c504 (176 bytes). Name is a placeholder.
    .text
    .globl Batch_0200c504
Batch_0200c504:
    mflr    r0
    stw     r0,4(r1)
    mr      r12,r3
    stwu    r1,-8(r1)
    lwz     r7,20(r12)
    lwz     r5,28(r12)
    slwi    r6,r7,2
    add     r0,r5,r6
    cmplw   r5,r0
    li      r3,-1
    beq-    L0200c560
    li      r7,1
L0200c534:
    lwz     r11,0(r5)
    lbz     r8,12(r11)
    extsb   r8,r8
    cmpwi   r8,-1
    beq-    L0200c554
    lbz     r10,12(r11)
    slw     r9,r7,r10
    andc    r3,r3,r9
L0200c554:
    addi    r5,r5,4
    cmplw   r5,r0
    bne+    L0200c534
L0200c560:
    lwz     r11,84(r12)
    cmpwi   r11,253
    beq-    L0200c598
    lbz     r5,92(r12)
    extsb   r5,r5
    cmpwi   r5,-1
    beq-    L0200c598
    lbz     r12,93(r12)
    extsb   r12,r12
    cmpwi   r12,-1
    beq-    L0200c598
    li      r0,1
    slw     r0,r0,r5
    andc    r3,r3,r0
L0200c598:
    li      r4,1
    bl      ext_0261ff0c
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    clrlwi  r3,r3,24
    blr
