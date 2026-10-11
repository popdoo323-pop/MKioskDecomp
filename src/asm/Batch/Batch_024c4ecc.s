# Converted from the disassembly of 0x024c4ecc (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024c4ecc
Batch_024c4ecc:
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
    beq-    L024c4f18
    lwz     r11,32(r31)
    lwz     r3,0(r11)
    bl      ext_0247fda0
    cmpwi   r3,0
    bne-    L024c4f18
    li      r30,1
L024c4f18:
    lwz     r0,20(r1)
    clrlwi  r3,r30,24
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
