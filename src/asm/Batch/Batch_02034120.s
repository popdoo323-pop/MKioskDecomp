# Converted from the disassembly of 0x02034120 (212 bytes). Name is a placeholder.
    .text
    .globl Batch_02034120
Batch_02034120:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r3
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r12,72(r30)
    mr      r31,r4
    cmpw    r31,r12
    bge-    L020341dc
    mr      r3,r30
    mr      r4,r31
    bl      ext_020340fc
    bl      ext_02635118
    mulli   r10,r31,280
    li      r12,1
    add     r10,r30,r10
    li      r0,0
    stb     r12,374(r10)
    lis     r31,4117
    stb     r0,376(r10)
    lwzu    r9,1072(r31)
    cmpwi   r9,5
    bne-    L020341b8
    lis     r11,4120
    addi    r3,r30,76
    lfs     f1,-11840(r11)
    li      r4,0
    bl      ext_0262efe0
    lis     r4,4120
    lis     r9,4096
    lwz     r4,-11836(r4)
    lfs     f1,16664(r9)
    addi    r3,r30,76
    bl      ext_0262efe0
    lwz     r0,0(r31)
    cmpwi   r0,5
    beq-    L020341c4
L020341b8:
    lbz     r0,1311(r30)
    cmpwi   r0,0
    beq-    L020341cc
L020341c4:
    li      r0,1
    stb     r0,1310(r30)
L020341cc:
    lis     r0,0
    ori     r0,r0,65535
    sth     r0,1222(r30)
    sth     r0,1220(r30)
L020341dc:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
