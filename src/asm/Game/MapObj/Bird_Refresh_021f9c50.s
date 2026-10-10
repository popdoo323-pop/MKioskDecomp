# Bird method at 0x021f9c50 (208 bytes). Calls the virtual slot +12 of the sub-object at +220 (if set), calls 0x02081974 and
# then the virtual slot +52 with the float at +104 as argument, then calls the virtual slot +36 of the object at +216 (if
# set), then 0x0225f1d8 with the values at +200 and +216, then the virtual slot +268 of the object at +184, and clears
# bit 8 of the flag word at +56 of the sub-object at +216. Written from the disassembly of the original bytes. Name is a
# placeholder.
    .text
    .globl Bird_Refresh_021f9c50
Bird_Refresh_021f9c50:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    or      r31, r3, r3
    stw     r0, 20(r1)
    lwz     r3, 220(r31)
    cmpwi   r3, 0x0
    beq     L1ca4
    lwz     r8, 808(r3)
    lwz     r9, 12(r8)
    mtctr   r9
    bctrl
    lwz     r3, 220(r31)
    li      r4, 0x0
    bl      ext_02081974
    lwz     r3, 220(r31)
    lwz     r12, 808(r3)
    lwz     r8, 52(r12)
    mtctr   r8
    lfs     f1, 104(r31)
    bctrl
L1ca4:
    lwz     r3, 216(r31)
    cmpwi   r3, 0x0
    beq     L1d0c
    lwz     r9, 120(r3)
    lwz     r0, 36(r9)
    mtctr   r0
    or      r4, r31, r31
    bctrl
    lwz     r12, 200(r31)
    addi    r6, r31, 104
    lwz     r0, 8(r12)
    addi    r4, r1, 8
    lwz     r3, 216(r31)
    addi    r5, r12, 12
    stw     r0, 8(r1)
    bl      ext_0225f1d8
    lwz     r10, 184(r31)
    lwz     r11, 268(r10)
    mtctr   r11
    or      r3, r31, r31
    bctrl
    lwz     r11, 216(r31)
    lwz     r7, 28(r11)
    lwz     r0, 56(r7)
    rlwinm  r0, r0, 0, 10, 8
    stw     r0, 56(r7)
L1d0c:
    lwz     r0, 20(r1)
    lwz     r31, 12(r1)
    mtlr    r0
    addi    r1, r1, 16
    blr
