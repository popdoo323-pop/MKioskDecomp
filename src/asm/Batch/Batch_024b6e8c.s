# Converted from the disassembly of 0x024b6e8c (124 bytes). Name is a placeholder.
    .text
    .globl Batch_024b6e8c
Batch_024b6e8c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r31,248(r3)
    cmpwi   r31,0
    beq-    L024b6ef4
    lwz     r11,28(r31)
    lwz     r12,252(r3)
    cmplw   r11,r12
    bne-    L024b6ef4
    lwz     r3,32(r31)
    cmpwi   r3,0
    beq-    L024b6ee4
    lwz     r0,36(r31)
    lwz     r10,464(r3)
    cmplw   r0,r10
    bne-    L024b6ee4
    lwz     r12,476(r3)
    cmpwi   r12,0
    ble-    L024b6ee4
    bl      ext_027741c0
L024b6ee4:
    lwz     r0,108(r31)
    rlwinm  r11,r0,0,30,28
    ori     r10,r11,8
    stw     r10,108(r31)
L024b6ef4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
