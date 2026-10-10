# Bird method at 0x021f9d20 (268 bytes). Calls 0x0225f310 with the value at +8 of the sub-object at +200, then computes
# three floats (x, y, z) from the sub-object at +216 and the constants at 0x10030000-10248 and -10268, depending on the
# mode value at +48 of the sub-object at +200 (0, 2, or other). Stores them at +8, +12 and +16 of the object the sub-object
# at +216 points to, then calls 0x0225f4d8. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl Bird_Blend_021f9d20
Bird_Blend_021f9d20:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    or      r31, r3, r3
    stw     r0, 20(r1)
    lwz     r9, 200(r31)
    lwz     r0, 8(r9)
    li      r5, 0x0
    lwz     r3, 216(r31)
    addi    r4, r1, 8
    stw     r0, 8(r1)
    bl      ext_0225f310
    lwz     r12, 200(r31)
    lis     r10, 0x1003
    lwz     r0, 48(r12)
    lfs     f0, -10248(r10)
    cmplwi  r0, 0x0
    lfs     f12, 40(r12)
    beq     L9d98
    cmplwi  r0, 0x2
    beq     L9dc4
    lwz     r12, 216(r31)
    lis     r11, 0x1003
    lfs     f13, -10268(r11)
    lwz     r10, 0(r12)
    fmr     f11, f13
    cmpwi   r10, 0x0
    li      r9, 0x0
    beq     L9df4
    b       L9dec
L9d98:
    lwz     r12, 216(r31)
    lfs     f13, 20(r12)
    lis     r11, 0x1003
    lwz     r10, 0(r12)
    fmadds  f12, f13, f0, f12
    lfs     f13, -10268(r11)
    cmpwi   r10, 0x0
    li      r9, 0x0
    fmr     f11, f13
    beq     L9df4
    b       L9dec
L9dc4:
    lwz     r12, 216(r31)
    lis     r11, 0x1003
    lfs     f11, 20(r12)
    lfs     f13, -10268(r11)
    fnmsubs f12, f11, f0, f12
    lwz     r10, 0(r12)
    fmr     f11, f13
    cmpwi   r10, 0x0
    li      r9, 0x0
    beq     L9df4
L9dec:
    lwz     r11, 8(r12)
    lwz     r9, 0(r11)
L9df4:
    stfs    f13, 8(r9)
    stfs    f12, 12(r9)
    stfs    f11, 16(r9)
    lwz     r12, 200(r31)
    lwz     r0, 8(r12)
    lwz     r3, 216(r31)
    addi    r4, r1, 8
    stw     r0, 8(r1)
    bl      ext_0225f4d8
    lwz     r0, 20(r1)
    lwz     r31, 12(r1)
    mtlr    r0
    addi    r1, r1, 16
    blr
