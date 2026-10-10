# Bird method at 0x021f9e2c (156 bytes). Sets the low three bits of the halfword at +116. Calls the virtual slot +52 of the
# sub-object at +220 with the float at +104 (if set), then 0x0225f1d8 (if the object at +216 is set) and the virtual slot
# +268 of the object at +184, then 0x021f91a0 with the value at +48. Written from the disassembly of the original bytes.
# Name is a placeholder.
    .text
    .globl Bird_Latch_021f9e2c
Bird_Latch_021f9e2c:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    or      r31, r3, r3
    stw     r0, 20(r1)
    lhz     r11, 116(r31)
    lwz     r3, 220(r31)
    ori     r11, r11, 0x7
    cmpwi   r3, 0x0
    sth     r11, 116(r31)
    beq     L6c
    lwz     r9, 808(r3)
    lwz     r0, 52(r9)
    mtctr   r0
    lfs     f1, 104(r31)
    bctrl
L6c:
    lwz     r3, 216(r31)
    cmpwi   r3, 0x0
    beq     Lea8
    lwz     r10, 200(r31)
    lwz     r0, 8(r10)
    addi    r5, r10, 12
    addi    r4, r1, 8
    addi    r6, r31, 104
    stw     r0, 8(r1)
    bl      ext_0225f1d8
    lwz     r12, 184(r31)
    lwz     r0, 268(r12)
    mtctr   r0
    or      r3, r31, r31
    bctrl
Lea8:
    or      r3, r31, r31
    addi    r4, r31, 48
    bl      ext_021f91a0
    lwz     r0, 20(r1)
    lwz     r31, 12(r1)
    mtlr    r0
    addi    r1, r1, 16
    blr
