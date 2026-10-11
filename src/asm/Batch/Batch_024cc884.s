# Converted from the disassembly of 0x024cc884 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_024cc884
Batch_024cc884:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-24(r1)
    lwz     r0,0(r4)
    lwz     r8,172(r3)
    lwz     r12,176(r3)
    cmplw   r0,r8
    lfs     f0,0(r5)
    bge-    L024cc8b0
    slwi    r11,r0,2
    add     r12,r12,r11
L024cc8b0:
    lfs     f13,0(r12)
    lwz     r0,4(r4)
    fsubs   f0,f13,f0
    lwz     r7,180(r3)
    stfs    f0,8(r1)
    cmplw   r0,r7
    lwz     r11,184(r3)
    bge-    L024cc8d8
    slwi    r9,r0,2
    add     r11,r11,r9
L024cc8d8:
    lfs     f0,4(r5)
    lfs     f13,0(r11)
    fsubs   f0,f13,f0
    addi    r4,r1,8
    stfs    f0,12(r1)
    bl      ext_024ca530
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
