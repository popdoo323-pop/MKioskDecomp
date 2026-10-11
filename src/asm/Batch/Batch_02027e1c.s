# Converted from the disassembly of 0x02027e1c (236 bytes). Name is a placeholder.
    .text
    .globl Batch_02027e1c
Batch_02027e1c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,4(r31)
    cmpwi   r0,0
    ble-    L02027ef0
    lwz     r9,48(r31)
    cmplwi  r9,1
    li      r30,0
    blt-    L02027e64
    beq-    L02027e84
    cmplwi  r9,2
    beq-    L02027eb4
    lwz     r8,52(r31)
    b       L02027ee8
L02027e64:
    mr      r3,r31
    bl      ext_02027d98
    lwz     r10,48(r31)
    stw     r30,52(r31)
    addi    r10,r10,1
    mr      r8,r30
    stw     r10,48(r31)
    b       L02027ee8
L02027e84:
    lis     r12,4120
    lwz     r12,-13220(r12)
    lwz     r8,52(r31)
    mulli   r11,r12,60
    cmpw    r8,r11
    ble-    L02027ee8
    lwz     r12,48(r31)
    stw     r30,52(r31)
    addi    r12,r12,1
    mr      r8,r30
    stw     r12,48(r31)
    b       L02027ee8
L02027eb4:
    lwz     r0,44(r31)
    cmpwi   r0,0
    beq-    L02027ec8
    mr      r3,r31
    bl      ext_02027620
L02027ec8:
    lis     r11,4120
    lwz     r11,-13216(r11)
    lwz     r8,52(r31)
    mulli   r7,r11,60
    cmpw    r8,r7
    ble-    L02027ee8
    lwz     r8,52(r31)
    stw     r30,48(r31)
L02027ee8:
    addi    r0,r8,1
    stw     r0,52(r31)
L02027ef0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
