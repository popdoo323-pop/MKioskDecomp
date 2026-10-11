# Converted from the disassembly of 0x0203c710 (232 bytes). Name is a placeholder.
    .text
    .globl Batch_0203c710
Batch_0203c710:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r12,40(r31)
    cmpwi   r12,0
    blt-    L0203c7e4
    addic.  r12,r12,-1
    stw     r12,40(r31)
    bge-    L0203c7e4
    lbz     r0,49(r31)
    cmpwi   r0,0
    beq-    L0203c778
    lwz     r3,36(r31)
    cmpwi   r3,0
    beq-    L0203c758
    bl      ext_02587574
L0203c758:
    li      r4,0
    lfs     f1,44(r31)
    addi    r3,r31,36
    stb     r4,49(r31)
    bl      ext_0262ea48
    li      r11,-1
    stw     r11,40(r31)
    b       L0203c7e4
L0203c778:
    lbz     r0,48(r31)
    cmpwi   r0,0
    lwz     r3,4(r31)
    beq-    L0203c7ac
    lis     r4,4096
    addi    r4,r4,19252
    bl      ext_02051068
    mr      r5,r3
    li      r6,0
    addi    r4,r31,36
    mr      r3,r31
    bl      ext_020546e8
    b       L0203c7cc
L0203c7ac:
    lis     r4,4096
    addi    r4,r4,19236
    bl      ext_02051068
    mr      r5,r3
    li      r6,0
    addi    r4,r31,36
    mr      r3,r31
    bl      ext_020546e8
L0203c7cc:
    lfs     f1,44(r31)
    li      r4,0
    addi    r3,r31,36
    bl      ext_0262ea48
    li      r11,-1
    stw     r11,40(r31)
L0203c7e4:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
