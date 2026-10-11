# Converted from the disassembly of 0x02027978 (304 bytes). Name is a placeholder.
    .text
    .globl Batch_02027978
Batch_02027978:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r0,48(r30)
    cmplwi  r0,1
    lis     r31,4120
    blt-    L020279b4
    beq-    L02027a20
    lwz     r12,52(r30)
    addi    r10,r12,1
    stw     r10,52(r30)
    b       L02027a90
L020279b4:
    lwz     r8,-13224(r31)
    mulli   r7,r8,60
    lwz     r9,52(r30)
    cmpw    r9,r7
    ble-    L020279d8
    li      r10,0
    mr      r3,r30
    stw     r10,52(r30)
    bl      ext_020276f0
L020279d8:
    mr      r3,r30
    bl      ext_020277a8
    cmpwi   r3,0
    bne-    L020279f8
    lwz     r12,52(r30)
    addi    r10,r12,1
    stw     r10,52(r30)
    b       L02027a90
L020279f8:
    lwz     r12,-13224(r31)
    mulli   r11,r12,180
    srawi   r0,r11,2
    lwz     r11,48(r30)
    addze   r12,r0
    addi    r11,r11,1
    stw     r11,48(r30)
    addi    r10,r12,1
    stw     r10,52(r30)
    b       L02027a90
L02027a20:
    lwz     r7,-13224(r31)
    lwz     r12,52(r30)
    mulli   r0,r7,60
    cmpw    r12,r0
    ble-    L02027a88
    mr      r3,r30
    bl      ext_020276f0
    lwz     r0,4(r30)
    cmpwi   r0,1
    ble-    L02027a84
    cmpwi   r0,0
    li      r31,0
    beq-    L02027a5c
    lwz     r8,12(r30)
    lwz     r31,0(r8)
L02027a5c:
    lwz     r9,28(r31)
    cmpwi   r9,0
    beq-    L02027a84
    mr      r3,r30
    li      r4,0
    bl      ext_020275a0
    mr      r5,r3
    mr      r3,r30
    mr      r4,r31
    bl      ext_020275f4
L02027a84:
    li      r12,0
L02027a88:
    addi    r10,r12,1
    stw     r10,52(r30)
L02027a90:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
