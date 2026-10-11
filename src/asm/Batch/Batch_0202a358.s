# Converted from the disassembly of 0x0202a358 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_0202a358
Batch_0202a358:
    lwz     r8,280(r3)
    li      r9,0
    lwz     r12,56(r4)
    cmpw    r9,r8
    bgelr-
    addi    r7,r3,76
L0202a370:
    lwz     r10,12(r7)
    cmpwi   r10,0
    addi    r7,r7,8
    beq-    L0202a3c0
    lwz     r0,12(r10)
    cmplw   r0,r4
    bne-    L0202a3c0
    cmpwi   r12,0
    bge-    L0202a3a8
    li      r12,0
    stw     r12,28(r10)
    li      r12,1
    lwz     r8,280(r3)
    b       L0202a3c0
L0202a3a8:
    cmpwi   r12,12
    ble-    L0202a3b4
    li      r12,12
L0202a3b4:
    stw     r12,28(r10)
    lwz     r8,280(r3)
    addi    r12,r12,1
L0202a3c0:
    addi    r9,r9,1
    cmpw    r9,r8
    blt+    L0202a370
    blr
