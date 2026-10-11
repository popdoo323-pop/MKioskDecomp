# Converted from the disassembly of 0x02007040 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_02007040
Batch_02007040:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02015614
    cmpwi   r3,0
    beq-    L0200708c
    lwz     r3,96(r31)
    cmpwi   r3,0
    beq-    L0200708c
    lwz     r12,4(r3)
    lwz     r0,28(r12)
    mtctr   r0
    bctrl
    lwz     r11,52(r31)
    mr      r4,r3
    lwz     r3,0(r11)
    bl      ext_020315c8
L0200708c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
