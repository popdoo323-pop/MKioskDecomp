# Converted from the disassembly of 0x021a7c9c (76 bytes). Name is a placeholder.
    .text
    .globl Wheel_Gap_021a7c9c
Wheel_Gap_021a7c9c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,28(r31)
    cmpwi   r12,0
    beq-    L021a7cc8
    lwz     r0,4(r12)
    cmpwi   r0,2
    beq-    L021a7cd8
L021a7cc8:
    lwz     r3,4(r31)
    bl      ext_021b08b0
    lwz     r3,8(r31)
    bl      ext_020c17c8
L021a7cd8:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
