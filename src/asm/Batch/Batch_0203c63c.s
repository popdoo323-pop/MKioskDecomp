# Converted from the disassembly of 0x0203c63c (212 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c63c
Batch_0203c63c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r28,8(r1)
    stw     r31,20(r1)
    mr      r28,r3
    stw     r0,28(r1)
    lwz     r0,16(r28)
    cmpwi   r0,0
    beq-    L0203c6f0
    lwz     r11,12(r28)
    addi    r31,r28,-236
    addi    r29,r11,-244
    cmplw   r29,r31
    lwz     r30,4(r11)
    beq-    L0203c6f0
L0203c680:
    lwz     r12,8(r29)
    cmpwi   r12,0
    bgt-    L0203c6d8
    lwz     r4,0(r29)
    addi    r7,r29,16
    lwz     r5,4(r29)
    mr      r3,r28
    lwz     r6,12(r29)
    bl      ext_0203c574
    addi    r3,r29,244
    bl      ext_026017e4
    lwz     r8,16(r28)
    lwz     r9,20(r28)
    addi    r8,r8,-1
    stw     r8,16(r28)
    stw     r9,0(r29)
    stw     r29,20(r28)
    addi    r29,r30,-244
    cmplw   r29,r31
    lwz     r30,4(r30)
    bne+    L0203c680
    b       L0203c6f0
L0203c6d8:
    addi    r0,r12,-1
    stw     r0,8(r29)
    addi    r29,r30,-244
    cmplw   r29,r31
    lwz     r30,4(r30)
    bne+    L0203c680
L0203c6f0:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
