# Bird method at 0x021f9ec8 (108 bytes). If the bit at +116 (bit 31) is set and the helper 0x0237bc54 returns non-null
# on the object, calls the same helper again and makes a virtual call through its table slot +444 with the argument
# (r4 + 36). Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl Bird_Update_021f9ec8
Bird_Update_021f9ec8:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r30, 8(r1)
    stw     r31, 12(r1)
    or      r30, r3, r3
    stw     r0, 20(r1)
    lhz     r0, 116(r30)
    rlwinm. r0, r0, 0, 31, 31
    or      r31, r4, r4
    beq     L1f1c
    or      r3, r30, r30
    bl      ext_0237bc54
    cmpwi   r3, 0x0
    beq     L1f1c
    or      r3, r30, r30
    bl      ext_0237bc54
    lwz     r12, 0(r3)
    lwz     r12, 444(r12)
    mtctr   r12
    addi    r4, r31, 36
    bctrl
L1f1c:
    lwz     r0, 20(r1)
    lwz     r30, 8(r1)
    mtlr    r0
    lwz     r31, 12(r1)
    addi    r1, r1, 16
    blr
