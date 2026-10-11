# Converted from the disassembly of 0x0203c8e0 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c8e0
Batch_0203c8e0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r29,12(r3)
    addi    r31,r3,8
    cmplw   r29,r31
    beq-    L0203c93c
L0203c908:
    mr      r3,r29
    lwz     r30,4(r29)
    bl      ext_026017e4
    lwz     r11,8(r31)
    lwz     r12,12(r31)
    addi    r11,r11,-1
    stw     r11,8(r31)
    addi    r0,r29,-244
    stw     r12,-244(r29)
    mr      r29,r30
    cmplw   r29,r31
    stw     r0,12(r31)
    bne+    L0203c908
L0203c93c:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
