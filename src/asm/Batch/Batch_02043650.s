# Converted from the disassembly of 0x02043650 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_02043650
Batch_02043650:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r8,0(r3)
    lwz     r0,140(r8)
    mtctr   r0
    mr      r30,r3
    bctrl
    lwz     r31,40(r30)
    addi    r29,r30,36
    cmplw   r31,r29
    beq-    L020436ac
L0204368c:
    lwz     r3,8(r31)
    lwz     r10,0(r3)
    lwz     r11,116(r10)
    mtctr   r11
    bctrl
    lwz     r31,4(r31)
    cmplw   r31,r29
    bne+    L0204368c
L020436ac:
    lwz     r12,0(r30)
    lwz     r0,148(r12)
    mtctr   r0
    mr      r3,r30
    bctrl
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
