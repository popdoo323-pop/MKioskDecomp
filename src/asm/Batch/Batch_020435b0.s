# Converted from the disassembly of 0x020435b0 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_020435b0
Batch_020435b0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r28,8(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r9,0(r3)
    lwz     r0,124(r9)
    mtctr   r0
    mr      r29,r3
    mr      r30,r4
    bctrl
    lwz     r31,40(r29)
    addi    r28,r29,36
    cmplw   r31,r28
    beq-    L02043618
L020435f4:
    lwz     r3,8(r31)
    lwz     r12,0(r3)
    lwz     r0,108(r12)
    mtctr   r0
    mr      r4,r30
    bctrl
    lwz     r31,4(r31)
    cmplw   r31,r28
    bne+    L020435f4
L02043618:
    lwz     r7,0(r29)
    lwz     r0,132(r7)
    mtctr   r0
    mr      r3,r29
    mr      r4,r30
    bctrl
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
