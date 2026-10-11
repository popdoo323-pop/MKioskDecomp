# Converted from the disassembly of 0x0204375c (148 bytes). Name is a placeholder.
    .text
    .globl Batch_0204375c
Batch_0204375c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r28,8(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r11,0(r3)
    lwz     r0,172(r11)
    mtctr   r0
    mr      r29,r4
    mr      r28,r3
    bctrl
    lwz     r30,40(r28)
    addi    r31,r28,36
    cmplw   r30,r31
    beq-    L020437b8
L020437a0:
    lwz     r3,8(r30)
    mr      r4,r29
    bl      ext_02411074
    lwz     r30,4(r30)
    cmplw   r30,r31
    bne+    L020437a0
L020437b8:
    lwz     r10,0(r28)
    lwz     r12,180(r10)
    mtctr   r12
    mr      r3,r28
    mr      r4,r29
    bctrl
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
