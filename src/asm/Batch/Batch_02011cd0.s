# Converted from the disassembly of 0x02011cd0 (132 bytes). Name is a placeholder.
    .text
    .globl Batch_02011cd0
Batch_02011cd0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r30,72(r31)
    lwz     r3,84(r30)
    bl      ext_02185c38
    lis     r0,-18933
    lwz     r11,96(r30)
    ori     r0,r0,24759
    mulhw   r12,r0,r11
    add     r12,r11,r12
    srawi   r0,r11,31
    srawi   r12,r12,7
    subf    r12,r0,r12
    mulli   r12,r12,180
    subf    r0,r12,r11
    cmplw   r0,r3
    bne-    L02011d2c
    mr      r3,r31
    bl      ext_020105fc
L02011d2c:
    mr      r3,r31
    bl      ext_020114e8
    mr      r3,r31
    bl      ext_02011b88
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
