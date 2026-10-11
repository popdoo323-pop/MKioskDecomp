# Converted from the disassembly of 0x02027aa8 (480 bytes). Name is a placeholder.
    .text
    .globl Batch_02027aa8
Batch_02027aa8:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r30,48(r1)
    li      r30,0
    stw     r31,52(r1)
    stw     r0,60(r1)
    lwz     r11,4(r3)
    mr      r5,r30
    addi    r31,r3,4
    cmpwi   r11,0
    mr      r3,r30
    ble-    L02027b68
    mtctr   r11
    li      r7,0
    mr      r10,r11
L02027ae4:
    cmplw   r5,r10
    li      r12,0
    bge-    L02027af8
    lwz     r6,8(r31)
    lwzx    r12,r6,r7
L02027af8:
    lwz     r0,28(r12)
    cmpwi   r0,0
    bne-    L02027b28
    cmplw   r5,r10
    li      r4,0
    bge-    L02027b18
    lwz     r8,8(r31)
    lwzx    r4,r8,r7
L02027b18:
    lwz     r9,24(r4)
    cmpw    r9,r11
    blt-    L02027b28
    li      r30,1
L02027b28:
    cmplw   r5,r10
    li      r6,0
    bge-    L02027b3c
    lwz     r9,8(r31)
    lwzx    r6,r9,r7
L02027b3c:
    lwz     r0,28(r6)
    cntlzw  r4,r0
    addi    r7,r7,4
    srwi    r0,r4,5
    addi    r5,r5,1
    or      r3,r3,r0
    bdnz+   L02027ae4
    cmpwi   r30,0
    bne-    L02027b68
    cmpwi   r3,0
    bne-    L02027c70
L02027b68:
    li      r9,0
    addi    r3,r1,8
    stw     r9,8(r1)
    addi    r5,r1,20
    stw     r9,12(r1)
    li      r4,6
    stw     r9,16(r1)
    bl      ext_02601ad4
    addi    r5,r1,8
    cmplw   r5,r31
    beq-    L02027bc0
    lwz     r0,0(r31)
    li      r6,0
    lwz     r12,12(r1)
    lwz     r4,8(r31)
    cmpw    r12,r0
    bge-    L02027bb0
    mr      r0,r12
L02027bb0:
    lwz     r3,16(r1)
    slwi    r5,r0,2
    stw     r0,8(r1)
    bl      ext_029aacf0
L02027bc0:
    li      r5,24
    addi    r4,r31,12
    addi    r3,r1,20
    bl      ext_029abc88
    lwz     r0,8(r1)
    cmpwi   r0,0
    li      r31,0
    ble-    L02027c70
L02027be0:
    li      r4,-1
    li      r12,12
    cmpwi   r0,0
    mr      r8,r0
    li      r5,0
    lwz     r11,16(r1)
    bgt-    L02027c00
    li      r8,1
L02027c00:
    slwi    r10,r5,2
    mtctr   r8
    add     r9,r11,r10
L02027c0c:
    cmplw   r5,r0
    li      r8,0
    bge-    L02027c1c
    lwz     r8,0(r9)
L02027c1c:
    lwz     r7,24(r8)
    cmpw    r7,r12
    bge-    L02027c30
    mr      r4,r5
    mr      r12,r7
L02027c30:
    addi    r9,r9,4
    addi    r5,r5,1
    bdnz+   L02027c0c
    cmplw   r4,r0
    li      r10,0
    bge-    L02027c50
    slwi    r6,r4,2
    lwzx    r10,r6,r11
L02027c50:
    li      r5,1
    addi    r3,r1,8
    stw     r31,28(r10)
    bl      ext_02601b98
    lwz     r0,8(r1)
    cmpwi   r0,0
    addi    r31,r31,1
    bgt+    L02027be0
L02027c70:
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
