# Converted from the disassembly of 0x02027310 (268 bytes). Name is a placeholder.
    .text
    .globl Batch_02027310
Batch_02027310:
    mflr    r0
    stwu    r1,-56(r1)
    stw     r31,52(r1)
    stw     r30,48(r1)
    mr      r31,r3
    stw     r0,60(r1)
    lwz     r12,4(r31)
    cmpwi   r12,0
    addi    r30,r31,4
    ble-    L02027404
    li      r8,0
    addi    r3,r1,8
    stw     r8,8(r1)
    addi    r5,r1,20
    stw     r8,12(r1)
    li      r4,6
    stw     r8,16(r1)
    bl      ext_02601ad4
    addi    r0,r1,8
    cmplw   r0,r30
    beq-    L02027390
    lwz     r0,0(r30)
    li      r6,0
    lwz     r11,12(r1)
    lwz     r4,8(r30)
    cmpw    r0,r11
    bge-    L02027380
    mr      r11,r0
L02027380:
    lwz     r3,16(r1)
    slwi    r5,r11,2
    stw     r11,8(r1)
    bl      ext_029aacf0
L02027390:
    li      r5,24
    addi    r4,r30,12
    addi    r3,r1,20
    bl      ext_029abc88
    lwz     r11,8(r1)
    cmpwi   r11,0
    li      r30,0
    ble-    L02027404
L020273b0:
    lwz     r3,40(r31)
    mr      r4,r11
    bl      ext_02008eb0
    lwz     r7,8(r1)
    mr      r4,r3
    cmplw   r4,r7
    lwz     r10,56(r31)
    li      r6,0
    bge-    L020273e0
    lwz     r8,16(r1)
    slwi    r9,r4,2
    lwzx    r6,r9,r8
L020273e0:
    add     r0,r10,r30
    li      r5,1
    addi    r3,r1,8
    stw     r0,28(r6)
    bl      ext_02601b98
    lwz     r11,8(r1)
    cmpwi   r11,0
    addi    r30,r30,1
    bgt+    L020273b0
L02027404:
    lwz     r0,60(r1)
    lwz     r30,48(r1)
    mtlr    r0
    lwz     r31,52(r1)
    addi    r1,r1,56
    blr
