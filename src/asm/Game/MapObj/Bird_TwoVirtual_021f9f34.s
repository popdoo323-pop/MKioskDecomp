# Bird method at 0x021f9f34 (92 bytes). If the low two bits of the halfword at +116 are set, makes two virtual calls on
# the object at +220 through its table at +808: slot +28 first, then slot +20. Written from the disassembly of the original
# bytes. Name is a placeholder.
    .text
    .globl Bird_TwoVirtual_021f9f34
Bird_TwoVirtual_021f9f34:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    or      r31, r3, r3
    stw     r0, 20(r1)
    lhz     r0, 116(r31)
    clrlwi. r11, r0, 30
    beq     L7c
    lwz     r3, 220(r31)
    lwz     r12, 808(r3)
    lwz     r0, 28(r12)
    mtctr   r0
    bctrl
    lwz     r3, 220(r31)
    lwz     r12, 808(r3)
    lwz     r11, 20(r12)
    mtctr   r11
    bctrl
L7c:
    lwz     r0, 20(r1)
    lwz     r31, 12(r1)
    mtlr    r0
    addi    r1, r1, 16
    blr
