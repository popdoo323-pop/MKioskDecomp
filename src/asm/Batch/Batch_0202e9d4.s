# Converted from the disassembly of 0x0202e9d4 (312 bytes). Name is a placeholder.
    .text
    .globl Batch_0202e9d4
Batch_0202e9d4:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lwz     r29,80(r31)
    lwz     r3,84(r29)
    bl      ext_02185be4
    cmpwi   r3,0
    li      r30,0
    bne-    L0202ea14
    lbz     r12,101(r29)
    cmpwi   r12,0
    beq-    L0202eac8
L0202ea14:
    bl      ext_02398bd8
    cmpwi   r3,0
    beq-    L0202ea84
    bl      ext_02015614
    cmpwi   r3,0
    beq-    L0202eaf0
    lwz     r3,80(r31)
    bl      ext_020315e0
    cmpwi   r3,0
    beq-    L0202eaf0
    lwz     r10,108(r31)
    slwi    r11,r3,2
    addi    r10,r10,1
    addis   r12,r11,4117
    stw     r10,108(r31)
    lwz     r0,-29380(r12)
    cmpw    r10,r0
    ble-    L0202eaf0
    lwz     r3,80(r31)
    li      r4,1
    bl      ext_0203131c
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L0202ea84:
    bl      ext_02398bf8
    cmpwi   r3,0
    beq-    L0202eaf0
    lbz     r11,53(r31)
    li      r12,2
    stw     r30,56(r31)
    stb     r11,54(r31)
    li      r0,1
    stb     r12,53(r31)
    stb     r0,55(r31)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L0202eac8:
    bl      ext_02398bf8
    cmpwi   r3,0
    beq-    L0202eaf0
    lbz     r10,53(r31)
    li      r11,3
    stw     r30,56(r31)
    stb     r10,54(r31)
    li      r0,1
    stb     r11,53(r31)
    stb     r0,55(r31)
L0202eaf0:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
