# Converted from the disassembly of 0x02008530 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_02008530
Batch_02008530:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r29,20(r1)
    stw     r28,16(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    lwz     r10,0(r3)
    lwz     r12,172(r10)
    mtctr   r12
    mr      r29,r4
    mr      r28,r3
    bctrl
    lwz     r30,40(r28)
    stw     r30,8(r1)
    lwz     r0,36(r28)
    slwi    r0,r0,2
    add     r31,r30,r0
    cmplw   r30,r31
    beq-    L02008598
L02008580:
    lwz     r3,0(r30)
    mr      r4,r29
    bl      ext_02411074
    addi    r30,r30,4
    cmplw   r30,r31
    bne+    L02008580
L02008598:
    lwz     r11,0(r28)
    lwz     r0,180(r11)
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
