# Converted from the disassembly of 0x024dfb04 (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024dfb04
Batch_024dfb04:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,32(r31)
    li      r4,1
    lwz     r3,0(r12)
    li      r30,0
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024dfb50
    lwz     r11,32(r31)
    lwz     r3,0(r11)
    bl      ext_0247fda0
    cmpwi   r3,0
    bne-    L024dfb50
    li      r30,1
L024dfb50:
    lwz     r0,20(r1)
    clrlwi  r3,r30,24
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
