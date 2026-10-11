# Converted from the disassembly of 0x024bff28 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_024bff28
Batch_024bff28:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024bff50
    li      r3,308
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024bff88
L024bff50:
    mr      r3,r31
    bl      ext_024bf40c
    lis     r0,4107
    li      r11,0
    addic   r0,r0,-26652
    stb     r11,307(r31)
    stw     r0,84(r31)
    lis     r0,4107
    stb     r11,304(r31)
    addic   r0,r0,-29856
    stw     r11,300(r31)
    stw     r0,292(r31)
    stb     r11,306(r31)
    stb     r11,305(r31)
L024bff88:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
