# Converted from the disassembly of 0x0203be44 (440 bytes). Name is a placeholder.
    .text
    .globl Batch_0203be44
Batch_0203be44:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    mr      r30,r3
    stw     r29,12(r1)
    stw     r28,8(r1)
    stw     r31,20(r1)
    stw     r0,28(r1)
    bl      ext_0203b19c
    lwz     r9,112(r3)
    lis     r31,4120
    cmpwi   r9,1
    li      r29,0
    bne-    L0203bed0
    lwz     r0,96(r30)
    cmpwi   r0,0
    bge-    L0203bfdc
    stw     r29,96(r30)
    bl      ext_02041f68
    bl      ext_020428ec
    cmpwi   r3,0
    beq-    L0203bfdc
    lis     r12,4120
    lwz     r5,-10764(r31)
    lfs     f1,-10772(r12)
    li      r4,1
    bl      ext_0203ccd0
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
L0203bed0:
    lwz     r0,112(r3)
    cmpwi   r0,2
    blt-    L0203bfdc
    lwz     r28,96(r30)
    addi    r28,r28,1
    cmpwi   r28,1
    stw     r28,96(r30)
    bne-    L0203bf18
    bl      ext_02041f68
    bl      ext_020428ec
    cmpwi   r3,0
    beq-    L0203bf14
    lis     r10,4120
    lwz     r5,-10764(r31)
    lfs     f1,-10768(r10)
    li      r4,1
    bl      ext_0203ccd0
L0203bf14:
    lwz     r28,96(r30)
L0203bf18:
    mr      r3,r30
    li      r31,0
    bl      ext_0203b19c
    lwz     r0,112(r3)
    cmpwi   r0,2
    bne-    L0203bf44
    lis     r31,4120
    lwz     r31,-10784(r31)
    cmplw   r28,r31
    bne-    L0203bf8c
    b       L0203bf60
L0203bf44:
    lwz     r0,112(r3)
    cmpwi   r0,3
    bne-    L0203bf58
    lis     r31,4120
    lwz     r31,-10780(r31)
L0203bf58:
    cmplw   r28,r31
    bne-    L0203bf8c
L0203bf60:
    lis     r3,4096
    addi    r3,r3,18912
    bl      ext_02045d30
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
L0203bf8c:
    lis     r12,4120
    lwz     r12,-10776(r12)
    add     r7,r31,r12
    cmpw    r28,r7
    ble-    L0203bfdc
    li      r8,-1
    mr      r3,r30
    stw     r8,96(r30)
    bl      ext_0203b19c
    stw     r29,112(r3)
    bl      ext_02041f68
    bl      ext_020428ec
    cmpwi   r3,0
    beq-    L0203bfdc
    lis     r5,4120
    lis     r11,4096
    lwz     r5,-10760(r5)
    lfs     f1,18804(r11)
    li      r4,1
    bl      ext_0203ccd0
L0203bfdc:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
