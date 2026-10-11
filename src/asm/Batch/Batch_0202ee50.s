# Converted from the disassembly of 0x0202ee50 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_0202ee50
Batch_0202ee50:
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
    beq-    L0202eeb8
L0202ee98:
    lwz     r3,0(r30)
    lwz     r12,0(r3)
    lwz     r0,116(r12)
    mtctr   r0
    bctrl
    addi    r30,r30,4
    cmplw   r30,r31
    bne+    L0202ee98
L0202eeb8:
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
