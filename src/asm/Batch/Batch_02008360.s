# Converted from the disassembly of 0x02008360 (172 bytes). Name is a placeholder.
    .text
    .globl Batch_02008360
Batch_02008360:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r29,20(r1)
    stw     r28,16(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    lwz     r10,0(r3)
    lwz     r11,124(r10)
    mtctr   r11
    mr      r29,r4
    mr      r28,r3
    bctrl
    lwz     r30,40(r28)
    stw     r30,8(r1)
    lwz     r12,36(r28)
    slwi    r0,r12,2
    add     r31,r30,r0
    cmplw   r30,r31
    beq-    L020083d4
L020083b0:
    lwz     r3,0(r30)
    lwz     r10,0(r3)
    lwz     r12,108(r10)
    mtctr   r12
    mr      r4,r29
    bctrl
    addi    r30,r30,4
    cmplw   r30,r31
    bne+    L020083b0
L020083d4:
    lwz     r11,0(r28)
    lwz     r0,132(r11)
    mtctr   r0
    mr      r3,r28
    mr      r4,r29
    bctrl
    lwz     r28,16(r1)
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
