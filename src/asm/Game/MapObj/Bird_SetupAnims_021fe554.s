# Bird animation setup at 0x021fe554 (292 bytes). Looks up four animations through 0x02741100 (names at 0x10032...
# addresses built from the lis/addi pairs below) and stores each handle at +276, +280, +284 and +288. Then reads the
# element at index +290 of the list at +44 of the sub-object at +4 (count at +40, 12-byte elements), converts the
# halfword at +18 of that element to a float (integer-to-float trick, divided by a constant), and stores the halfword at
# +324 and the float at +328. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl Bird_SetupAnims_021fe554
Bird_SetupAnims_021fe554:
    mflr    r0
    stwu    r1, -48(r1)
    stw     r30, 40(r1)
    lis     r30, 0x1003
    lis     r12, 0x1003
    stw     r31, 44(r1)
    addi    r30, r30, -5976
    addi    r12, r12, -5588
    stw     r30, 12(r1)
    stw     r12, 8(r1)
    or      r31, r3, r3
    stw     r0, 52(r1)
    lwz     r3, 4(r31)
    addi    r4, r1, 8
    bl      ext_02741100
    stw     r3, 24(r1)
    stw     r3, 276(r31)
    lis     r0, 0x1003
    stw     r30, 12(r1)
    addic   r0, r0, -5576
    lwz     r3, 4(r31)
    addi    r4, r1, 8
    stw     r0, 8(r1)
    bl      ext_02741100
    lis     r0, 0x1003
    stw     r3, 28(r1)
    addic   r0, r0, -5600
    stw     r3, 280(r31)
    stw     r0, 8(r1)
    lwz     r3, 4(r31)
    addi    r4, r1, 8
    stw     r30, 12(r1)
    bl      ext_02741100
    stw     r3, 32(r1)
    lis     r10, 0x1003
    stw     r3, 284(r31)
    addi    r10, r10, -5596
    lwz     r3, 4(r31)
    stw     r10, 8(r1)
    addi    r4, r1, 8
    stw     r30, 12(r1)
    bl      ext_02741100
    lwz     r8, 4(r31)
    stw     r3, 36(r1)
    stw     r3, 288(r31)
    lha     r9, 290(r31)
    lwz     r7, 40(r8)
    cmplw   r9, r7
    lwz     r11, 44(r8)
    bge     L624
    mulli   r10, r9, 12
    add     r11, r11, r10
L624:
    lwz     r12, 0(r11)
    lis     r7, 0x4330
    lhz     r0, 18(r12)
    stw     r7, 16(r1)
    lis     r12, 0x1003
    stw     r0, 20(r1)
    lfd     f0, 16(r1)
    lfd     f13, -5608(r12)
    fsub    f0, f0, f13
    lis     r11, 0x1003
    frsp    f13, f0
    lfs     f0, -5628(r11)
    fdivs   f13, f0, f13
    sth     r0, 324(r31)
    stfs    f13, 328(r31)
    lwz     r0, 52(r1)
    lwz     r30, 40(r1)
    mtlr    r0
    lwz     r31, 44(r1)
    addi    r1, r1, 48
    blr
