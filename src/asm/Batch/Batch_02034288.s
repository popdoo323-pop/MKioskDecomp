# Converted from the disassembly of 0x02034288 (232 bytes). Name is a placeholder.
    .text
    .globl Batch_02034288
Batch_02034288:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r28,8(r1)
    stw     r29,12(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lbz     r0,68(r30)
    cmpwi   r0,0
    mr      r31,r4
    bne-    L02034350
    mr.     r28,r31
    ble-    L020342e0
    li      r29,0
L020342c4:
    lwz     r10,56(r30)
    lwz     r3,60(r30)
    add     r4,r10,r29
    bl      ext_02635378
    addic.  r28,r28,-1
    addi    r29,r29,136
    bne+    L020342c4
L020342e0:
    lwz     r12,72(r30)
    lwz     r4,60(r30)
    add     r12,r12,r31
    mr      r3,r30
    stw     r12,72(r30)
    bl      ext_026349a8
    lis     r9,4120
    lwz     r3,60(r30)
    lfs     f1,-12072(r9)
    bl      ext_02635574
    lis     r11,4120
    lwz     r3,60(r30)
    lfs     f1,-12080(r11)
    bl      ext_02635618
    lis     r10,4120
    lwz     r3,60(r30)
    lfs     f1,-12076(r10)
    bl      ext_026356bc
    lis     r9,4096
    lwz     r3,60(r30)
    lfs     f1,16672(r9)
    bl      ext_02635760
    lis     r12,4096
    lwz     r3,60(r30)
    lfs     f1,16664(r12)
    bl      ext_02635804
    li      r0,1
    stb     r0,68(r30)
L02034350:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
