# Converted from the disassembly of 0x0200e4fc (248 bytes). Name is a placeholder.
    .text
    .globl Batch_0200e4fc
Batch_0200e4fc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r10,100(r3)
    lwz     r10,52(r10)
    mtctr   r10
    mr      r29,r3
    mr      r30,r4
    mr      r31,r5
    bctrl
    lwz     r0,0(r30)
    cmplw   r0,r3
    beq-    L0200e55c
L0200e53c:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,0
    blr
L0200e55c:
    lbz     r0,0(r29)
    slwi    r12,r0,1
    addic.  r0,r12,-1
    li      r6,0
    ble-    L0200e5d4
    lwz     r11,104(r29)
    mtctr   r0
    li      r9,0
L0200e57c:
    lwz     r8,0(r11)
    li      r12,0
    cmplw   r6,r8
    lwz     r7,0(r31)
    bge-    L0200e598
    lwz     r10,8(r11)
    lwzx    r12,r10,r9
L0200e598:
    lwz     r0,4(r12)
    cmplw   r0,r7
    bne+    L0200e53c
    lbz     r8,8(r12)
    lbz     r10,4(r31)
    cmplw   r8,r10
    bne+    L0200e53c
    lbz     r0,9(r12)
    lbz     r7,5(r31)
    cmplw   r0,r7
    bne+    L0200e53c
    addi    r31,r31,8
    addi    r9,r9,4
    addi    r6,r6,1
    bdnz+   L0200e57c
L0200e5d4:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    li      r3,1
    blr
