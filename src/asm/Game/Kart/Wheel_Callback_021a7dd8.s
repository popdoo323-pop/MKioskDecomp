# Wheel callback at 0x021a7dd8 (192 bytes). Reads a flag from a global object at -3284 (offset +77). Unless the flag is set,
# it tests the flag bytes at +44 and returns early when both are clear. Otherwise it calls three helpers on the sub-objects
# at +4, +8 and +16 with the block at +48, calls 0x021a7cec with a flag derived from the object at +28, and, when both flag
# bytes at +36 and +37 are set, calls two more helpers on the sub-objects at +4 and +8. Written from the disassembly of the
# original bytes. Name is a placeholder. Kart-related: wheel behaviour.
    .text
    .globl Wheel_Callback_021a7dd8
Wheel_Callback_021a7dd8:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    lis     r12, 0x1015
    stw     r0, 20(r1)
    lwz     r12, -3284(r12)
    lbz     r11, 77(r12)
    cmpwi   r11, 0x0
    or      r31, r3, r3
    beq     Le0c
    lbz     r9, 44(r31)
    cmpwi   r9, 0x0
    beq     Le84
Le0c:
    lwz     r3, 4(r31)
    addi    r4, r31, 48
    bl      ext_021b0fdc
    lwz     r3, 8(r31)
    addi    r4, r31, 48
    bl      ext_020c6ef0
    lwz     r3, 16(r31)
    addi    r4, r31, 48
    bl      ext_021668e8
    lwz     r10, 28(r31)
    cmpwi   r10, 0x0
    li      r0, 0x0
    beq     Le50
    lwz     r12, 4(r10)
    cmpwi   r12, 0x2
    bne     Le50
    li      r0, 0x1
Le50:
    or      r3, r31, r31
    clrlwi  r4, r0, 24
    bl      ext_021a7cec
    lbz     r0, 36(r31)
    cmpwi   r0, 0x0
    beq     Le84
    lbz     r0, 37(r31)
    cmpwi   r0, 0x0
    beq     Le84
    lwz     r3, 4(r31)
    bl      ext_021b1740
    lwz     r3, 8(r31)
    bl      ext_020c7710
Le84:
    lwz     r0, 20(r1)
    lwz     r31, 12(r1)
    mtlr    r0
    addi    r1, r1, 16
    blr
