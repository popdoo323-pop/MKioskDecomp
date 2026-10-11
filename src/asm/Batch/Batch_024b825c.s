# Converted from the disassembly of 0x024b825c (180 bytes). Name is a placeholder.
    .text
    .globl Batch_024b825c
Batch_024b825c:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    lbz     r0,2033(r3)
    li      r30,-1
    cmpwi   r0,0
    mr      r31,r30
    beq-    L024b82a4
    lwz     r30,2036(r3)
    lwz     r31,2256(r3)
    addi    r3,r1,8
    bl      ext_02624840
    addi    r3,r1,8
    bl      ext_02624878
    srwi    r3,r3,30
    b       L024b82e8
L024b82a4:
    lbz     r8,2253(r3)
    cmpwi   r8,0
    beq-    L024b82b8
    lwz     r31,2036(r3)
    lwz     r30,2256(r3)
L024b82b8:
    addi    r3,r1,8
    bl      ext_02624840
    addi    r3,r1,8
    bl      ext_02624878
    srwi    r3,r3,30
    b       L024b82e8
L024b82d0:
    addi    r9,r3,1
    srawi   r10,r9,31
    clrlwi  r11,r10,30
    add     r12,r11,r9
    clrrwi  r0,r12,2
    subf    r3,r0,r9
L024b82e8:
    cmplw   r3,r30
    beq+    L024b82d0
    cmplw   r3,r31
    beq+    L024b82d0
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
