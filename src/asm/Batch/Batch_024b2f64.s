# Converted from the disassembly of 0x024b2f64 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_024b2f64
Batch_024b2f64:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02478ff0
    lwz     r11,820(r31)
    cmpwi   r11,0
    beq-    L024b2fa8
    addi    r11,r11,1
    lis     r12,4122
    stw     r11,820(r31)
    lwz     r12,-25428(r12)
    cmpw    r11,r12
    ble-    L024b2fa8
    li      r0,1
    stb     r0,824(r31)
L024b2fa8:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
