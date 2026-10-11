# Converted from the disassembly of 0x0200b788 (316 bytes). Name is a placeholder.
    .text
    .globl Batch_0200b788
Batch_0200b788:
    stwu    r1,-32(r1)
    stmw    r27,12(r1)
    lis     r12,4119
    lwz     r12,-4780(r12)
    lwz     r12,24(r12)
    lwz     r12,164(r12)
    li      r8,-1
    lis     r7,-32768
    li      r31,0
    lwz     r11,1208(r12)
    addi    r30,r12,1208
    addi    r7,r7,-1
    mr      r6,r8
    mr.     r12,r11
    mr      r5,r7
    ble-    L0200b89c
    li      r29,0
    lwz     r27,4(r3)
    mtctr   r12
    lwz     r28,4(r4)
L0200b7d8:
    cmplw   r31,r11
    li      r12,0
    bge-    L0200b7ec
    lwz     r10,8(r30)
    lwzx    r12,r10,r29
L0200b7ec:
    lwz     r10,0(r12)
    cmplw   r27,r10
    bne-    L0200b834
    lbz     r9,8(r3)
    lbz     r10,4(r12)
    cmplw   r9,r10
    bne-    L0200b834
    lbz     r10,9(r3)
    lbz     r12,5(r12)
    cmplw   r10,r12
    bne-    L0200b834
    cmplw   r31,r11
    li      r12,0
    bge-    L0200b82c
    lwz     r10,8(r30)
    lwzx    r12,r10,r29
L0200b82c:
    lwz     r8,12(r12)
    lwz     r7,8(r12)
L0200b834:
    cmplw   r31,r11
    li      r12,0
    bge-    L0200b848
    lwz     r10,8(r30)
    lwzx    r12,r10,r29
L0200b848:
    lwz     r10,0(r12)
    cmplw   r28,r10
    bne-    L0200b890
    lbz     r9,8(r4)
    lbz     r10,4(r12)
    cmplw   r9,r10
    bne-    L0200b890
    lbz     r10,9(r4)
    lbz     r12,5(r12)
    cmplw   r10,r12
    bne-    L0200b890
    cmplw   r31,r11
    li      r10,0
    bge-    L0200b888
    lwz     r12,8(r30)
    lwzx    r10,r12,r29
L0200b888:
    lwz     r6,12(r10)
    lwz     r5,8(r10)
L0200b890:
    addi    r29,r29,4
    addi    r31,r31,1
    bdnz+   L0200b7d8
L0200b89c:
    cmpw    r7,r5
    li      r3,-1
    blt-    L0200b8b8
    bgt-    L0200b8b4
    cmplw   r8,r6
    blt-    L0200b8b8
L0200b8b4:
    li      r3,1
L0200b8b8:
    lmw     r27,12(r1)
    addi    r1,r1,32
    blr
