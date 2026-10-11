# Converted from the disassembly of 0x020277ec (304 bytes). Name is a placeholder.
    .text
    .globl Batch_020277ec
Batch_020277ec:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r0,48(r30)
    cmplwi  r0,1
    lis     r31,4120
    blt-    L02027828
    beq-    L02027894
    lwz     r12,52(r30)
    addi    r10,r12,1
    stw     r10,52(r30)
    b       L02027904
L02027828:
    lwz     r8,-13224(r31)
    mulli   r7,r8,60
    lwz     r9,52(r30)
    cmpw    r9,r7
    ble-    L0202784c
    li      r10,0
    mr      r3,r30
    stw     r10,52(r30)
    bl      ext_020276f0
L0202784c:
    mr      r3,r30
    bl      ext_020277a8
    cmpwi   r3,0
    bne-    L0202786c
    lwz     r12,52(r30)
    addi    r10,r12,1
    stw     r10,52(r30)
    b       L02027904
L0202786c:
    lwz     r12,-13224(r31)
    mulli   r11,r12,60
    srawi   r0,r11,1
    lwz     r11,48(r30)
    addze   r12,r0
    addi    r11,r11,1
    stw     r11,48(r30)
    addi    r10,r12,1
    stw     r10,52(r30)
    b       L02027904
L02027894:
    lwz     r7,-13224(r31)
    lwz     r12,52(r30)
    mulli   r0,r7,60
    cmpw    r12,r0
    ble-    L020278fc
    mr      r3,r30
    bl      ext_020276f0
    lwz     r0,4(r30)
    cmpwi   r0,1
    ble-    L020278f8
    cmpwi   r0,0
    li      r31,0
    beq-    L020278d0
    lwz     r8,12(r30)
    lwz     r31,0(r8)
L020278d0:
    lwz     r9,28(r31)
    cmpwi   r9,0
    bne-    L020278f8
    mr      r3,r30
    mr      r4,r31
    bl      ext_02027468
    mr      r5,r3
    mr      r3,r30
    mr      r4,r31
    bl      ext_020275f4
L020278f8:
    li      r12,0
L020278fc:
    addi    r10,r12,1
    stw     r10,52(r30)
L02027904:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
