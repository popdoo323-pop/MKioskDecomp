# Converted from the disassembly of 0x024db360 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_024db360
Batch_024db360:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,120(r31)
    addi    r9,r31,200
    cmplw   r0,r9
    bne-    L024db3a4
    lwz     r10,372(r31)
    lwz     r12,32(r10)
    lwz     r3,0(r12)
    li      r4,1
    bl      ext_0247fce4
    stw     r3,132(r31)
    lwz     r3,372(r31)
    bl      ext_024c4b74
L024db3a4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
