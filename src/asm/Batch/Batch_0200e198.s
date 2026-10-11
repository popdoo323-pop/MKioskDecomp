# Converted from the disassembly of 0x0200e198 (220 bytes). Name is a placeholder.
    .text
    .globl Batch_0200e198
Batch_0200e198:
    stwu    r1,-32(r1)
    stmw    r26,8(r1)
    mflr    r0
    stw     r0,36(r1)
    mr      r29,r3
    addi    r30,r29,204
    mr      r3,r30
    mr      r31,r4
    bl      ext_0262b790
    lwz     r12,112(r29)
    addi    r28,r29,84
    addi    r26,r12,-24
    cmplw   r26,r28
    lwz     r27,4(r12)
    beq-    L0200e258
L0200e1d4:
    lbz     r12,4(r31)
    lwz     r9,0(r26)
    cmpwi   r12,0
    lwz     r6,0(r31)
    lbz     r0,5(r26)
    beq-    L0200e214
    cmplw   r9,r6
    clrlwi  r0,r0,24
    lbz     r7,4(r26)
    bne-    L0200e248
    cmplw   r7,r12
    bne-    L0200e248
    lbz     r5,5(r31)
    cmplw   r0,r5
    beq-    L0200e228
    b       L0200e248
L0200e214:
    cmplw   r9,r6
    bne-    L0200e248
    lbz     r8,5(r31)
    cmplw   r0,r8
    bne-    L0200e248
L0200e228:
    addi    r3,r26,24
    bl      ext_026017e4
    lwz     r10,116(r29)
    lwz     r0,120(r29)
    addi    r10,r10,-1
    stw     r10,116(r29)
    stw     r0,0(r26)
    stw     r26,120(r29)
L0200e248:
    addi    r26,r27,-24
    cmplw   r26,r28
    lwz     r27,4(r27)
    bne+    L0200e1d4
L0200e258:
    mr      r3,r30
    bl      ext_0262b7c4
    lmw     r26,8(r1)
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
