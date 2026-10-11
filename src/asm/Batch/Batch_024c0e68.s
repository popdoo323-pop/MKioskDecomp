# Converted from the disassembly of 0x024c0e68 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_024c0e68
Batch_024c0e68:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r30,r3
    mr      r31,r4
    stw     r0,20(r1)
    beq-    L024c0ed0
    lis     r0,4107
    cmpwi   r30,0
    addic   r0,r0,-27596
    bne-    L024c0ea8
    stw     r0,100(r30)
    clrlwi. r0,r31,31
    beq-    L024c0ed0
    b       L024c0ec8
L024c0ea8:
    lis     r11,4107
    mr      r3,r30
    addi    r11,r11,-28956
    li      r4,0
    stw     r11,100(r30)
    bl      ext_024bbd60
    clrlwi. r0,r31,31
    beq-    L024c0ed0
L024c0ec8:
    mr      r3,r30
    bl      ext_026014bc
L024c0ed0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
