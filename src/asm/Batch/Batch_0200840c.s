# Converted from the disassembly of 0x0200840c (152 bytes). Name is a placeholder.
    .text
    .globl Batch_0200840c
Batch_0200840c:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r29,20(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    lwz     r12,0(r3)
    lwz     r10,140(r12)
    mtctr   r10
    mr      r29,r3
    bctrl
    lwz     r30,40(r29)
    stw     r30,8(r1)
    lwz     r10,36(r29)
    slwi    r0,r10,2
    add     r31,r30,r0
    cmplw   r30,r31
    beq-    L02008474
L02008454:
    lwz     r3,0(r30)
    lwz     r12,0(r3)
    lwz     r0,116(r12)
    mtctr   r0
    bctrl
    addi    r30,r30,4
    cmplw   r30,r31
    bne+    L02008454
L02008474:
    lwz     r11,0(r29)
    lwz     r12,148(r11)
    mtctr   r12
    mr      r3,r29
    bctrl
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
