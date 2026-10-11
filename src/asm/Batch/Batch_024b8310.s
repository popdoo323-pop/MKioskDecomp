# Converted from the disassembly of 0x024b8310 (196 bytes). Name is a placeholder.
    .text
    .globl Batch_024b8310
Batch_024b8310:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    lbz     r0,2033(r3)
    li      r30,-1
    cmpwi   r0,0
    mr      r31,r30
    beq-    L024b835c
    lwz     r30,2040(r3)
    lwz     r31,2260(r3)
    addi    r3,r1,8
    bl      ext_02624840
    addi    r3,r1,8
    bl      ext_02624878
    li      r11,3
    mulhwu  r3,r3,r11
    b       L024b83ac
L024b835c:
    lbz     r10,2253(r3)
    cmpwi   r10,0
    beq-    L024b8370
    lwz     r31,2040(r3)
    lwz     r30,2260(r3)
L024b8370:
    addi    r3,r1,8
    bl      ext_02624840
    addi    r3,r1,8
    bl      ext_02624878
    li      r11,3
    mulhwu  r3,r3,r11
    b       L024b83ac
L024b838c:
    lis     r8,21845
    addi    r12,r3,1
    addi    r8,r8,21846
    mulhw   r0,r8,r12
    srawi   r7,r12,31
    subf    r0,r7,r0
    mulli   r0,r0,3
    subf    r3,r0,r12
L024b83ac:
    cmplw   r3,r30
    beq+    L024b838c
    cmplw   r3,r31
    beq+    L024b838c
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
