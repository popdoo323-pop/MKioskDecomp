# Converted from the disassembly of 0x024bd350 (116 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd350
Batch_024bd350:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L024bd378
    li      r3,268
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024bd3ac
L024bd378:
    mr      r3,r31
    bl      ext_024bbe2c
    lis     r12,4107
    lis     r0,4107
    addi    r12,r12,-28668
    addic   r0,r0,-28412
    stw     r12,84(r31)
    li      r11,0
    stw     r0,100(r31)
    li      r0,3
    stw     r11,260(r31)
    stw     r0,36(r31)
    stw     r11,252(r31)
L024bd3ac:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
