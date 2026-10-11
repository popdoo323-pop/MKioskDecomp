# Converted from the disassembly of 0x02041b28 (164 bytes). Name is a placeholder.
    .text
    .globl Batch_02041b28
Batch_02041b28:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r29,12(r1)
    mr      r31,r3
    stw     r30,16(r1)
    stw     r0,28(r1)
    bl      ext_02043f54
    mr      r29,r3
    stw     r29,20(r29)
    addi    r9,r31,212
    lwz     r30,24(r29)
    stw     r9,4(r29)
    lwz     r10,220(r31)
    cmpwi   r30,0
    stw     r10,8(r29)
    beq-    L02041b88
    li      r0,0
    addi    r3,r29,12
    stw     r0,24(r29)
    bl      ext_026017e4
    lwz     r12,8(r30)
    addi    r12,r12,-1
    stw     r12,8(r30)
L02041b88:
    addi    r3,r31,248
    addi    r4,r29,12
    stw     r3,24(r29)
    bl      ext_026017c4
    lwz     r7,256(r31)
    stw     r29,312(r31)
    addi    r7,r7,1
    lis     r8,4117
    stw     r7,256(r31)
    stw     r29,-28984(r8)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
