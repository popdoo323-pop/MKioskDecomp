# Converted from the disassembly of 0x02027468 (312 bytes). Name is a placeholder.
    .text
    .globl Batch_02027468
Batch_02027468:
    mflr    r0
    stwu    r1,-64(r1)
    stw     r31,60(r1)
    stw     r29,52(r1)
    addi    r5,r1,20
    stw     r28,48(r1)
    stw     r30,56(r1)
    li      r7,0
    stw     r0,68(r1)
    mr      r29,r3
    mr      r30,r4
    stw     r7,16(r1)
    li      r4,6
    stw     r7,12(r1)
    addi    r3,r1,8
    stw     r7,8(r1)
    bl      ext_02601ad4
    addi    r0,r29,4
    addi    r5,r1,8
    cmplw   r5,r0
    beq-    L020274e8
    lwz     r12,4(r29)
    li      r6,0
    lwz     r11,12(r1)
    lwz     r4,12(r29)
    cmpw    r11,r12
    bge-    L020274d8
    mr      r12,r11
L020274d8:
    lwz     r3,16(r1)
    slwi    r5,r12,2
    stw     r12,8(r1)
    bl      ext_029aacf0
L020274e8:
    li      r5,24
    addi    r4,r29,16
    addi    r3,r1,20
    bl      ext_029abc88
    cmpwi   r30,0
    beq-    L02027554
    lwz     r0,8(r1)
    li      r31,0
    cmpw    r31,r0
    bge-    L02027540
    li      r28,0
L02027514:
    lwz     r8,16(r1)
    lwzx    r3,r8,r28
    mr      r4,r30
    bl      ext_020285bc
    cmpwi   r3,0
    beq-    L02027544
    lwz     r9,8(r1)
    addi    r31,r31,1
    cmpw    r31,r9
    addi    r28,r28,4
    blt+    L02027514
L02027540:
    li      r31,-1
L02027544:
    li      r5,1
    mr      r4,r31
    addi    r3,r1,8
    bl      ext_02601b98
L02027554:
    lwz     r3,40(r29)
    lwz     r4,8(r1)
    bl      ext_02008eb0
    lwz     r10,8(r1)
    cmplw   r3,r10
    li      r0,0
    bge-    L0202757c
    lwz     r0,16(r1)
    slwi    r12,r3,2
    lwzx    r0,r12,r0
L0202757c:
    lwz     r28,48(r1)
    lwz     r29,52(r1)
    mr      r3,r0
    lwz     r0,68(r1)
    lwz     r30,56(r1)
    mtlr    r0
    lwz     r31,60(r1)
    addi    r1,r1,64
    blr
