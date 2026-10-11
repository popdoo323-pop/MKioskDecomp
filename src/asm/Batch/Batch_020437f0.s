# Converted from the disassembly of 0x020437f0 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_020437f0
Batch_020437f0:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r10,0(r3)
    lwz     r0,188(r10)
    mtctr   r0
    mr      r29,r3
    bctrl
    lwz     r30,40(r29)
    addi    r31,r29,36
    cmplw   r30,r31
    beq-    L02043840
L0204382c:
    lwz     r3,8(r30)
    bl      ext_02411084
    lwz     r30,4(r30)
    cmplw   r30,r31
    bne+    L0204382c
L02043840:
    lwz     r12,0(r29)
    lwz     r0,196(r12)
    mtctr   r0
    mr      r3,r29
    bctrl
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
