# Converted from the disassembly of 0x0200d1a4 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_0200d1a4
Batch_0200d1a4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    lwz     r12,4(r4)
    addi    r8,r1,8
    lwz     r0,0(r4)
    mr      r31,r5
    stw     r12,12(r1)
    mr      r4,r8
    stw     r0,8(r1)
    bl      ext_0200abdc
    cmpwi   r3,0
    beq-    L0200d204
    lwz     r0,28(r1)
    lwz     r9,0(r3)
    lwz     r10,0(r31)
    mtlr    r0
    xor     r11,r9,r10
    cntlzw  r12,r11
    lwz     r31,20(r1)
    srwi    r3,r12,5
    addi    r1,r1,24
    blr
L0200d204:
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    li      r3,0
    blr
