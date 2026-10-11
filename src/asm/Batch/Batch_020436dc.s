# Converted from the disassembly of 0x020436dc (128 bytes). Name is a placeholder.
    .text
    .globl Batch_020436dc
Batch_020436dc:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r10,0(r3)
    lwz     r0,156(r10)
    mtctr   r0
    mr      r29,r3
    bctrl
    lwz     r30,40(r29)
    addi    r31,r29,36
    cmplw   r30,r31
    beq-    L0204372c
L02043718:
    lwz     r3,8(r30)
    bl      ext_02411064
    lwz     r30,4(r30)
    cmplw   r30,r31
    bne+    L02043718
L0204372c:
    lwz     r12,0(r29)
    lwz     r0,164(r12)
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
