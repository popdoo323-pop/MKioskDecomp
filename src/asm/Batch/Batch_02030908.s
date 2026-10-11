# Converted from the disassembly of 0x02030908 (320 bytes). Name is a placeholder.
    .text
    .globl Batch_02030908
Batch_02030908:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r30,8(r1)
    stw     r0,20(r1)
    lwz     r10,96(r31)
    lwz     r0,140(r31)
    addi    r10,r10,1
    lwz     r6,152(r31)
    cmpwi   r0,0
    stw     r10,96(r31)
    blt-    L02030960
    lwz     r8,140(r31)
    addi    r7,r8,1
    lis     r12,4120
    stw     r7,140(r31)
    lwz     r12,-12380(r12)
    cmpw    r8,r12
    ble-    L02030960
    li      r0,-1
    stw     r0,140(r31)
L02030960:
    cmpwi   r6,0
    li      r30,0
    blt-    L0203099c
    lwz     r8,152(r31)
    addi    r7,r8,1
    lis     r11,4120
    stw     r7,152(r31)
    lwz     r11,-12364(r11)
    cmpw    r8,r11
    ble-    L0203099c
    li      r0,-1
    mr      r3,r31
    li      r4,0
    stw     r0,152(r31)
    bl      ext_02030318
L0203099c:
    lwz     r3,84(r31)
    bl      ext_02186220
    cmpwi   r3,0
    lwz     r3,84(r31)
    beq-    L020309e4
    stw     r30,124(r31)
    bl      ext_02186008
    cmpwi   r3,0
    bne-    L020309fc
L020309c0:
    stw     r30,160(r31)
    lis     r9,4096
    lfs     f0,16188(r9)
    stb     r30,111(r31)
    stfs    f0,128(r31)
    stb     r30,110(r31)
    stb     r30,109(r31)
    stfs    f0,144(r31)
    b       L02030a30
L020309e4:
    lwz     r12,124(r31)
    addi    r12,r12,1
    stw     r12,124(r31)
    bl      ext_02186008
    cmpwi   r3,0
    beq+    L020309c0
L020309fc:
    lbz     r5,132(r31)
    cmpwi   r5,0
    bne+    L020309c0
    lwz     r6,160(r31)
    lis     r9,4096
    stb     r30,111(r31)
    addi    r6,r6,1
    lfs     f0,16188(r9)
    stw     r6,160(r31)
    stfs    f0,128(r31)
    stfs    f0,144(r31)
    stb     r30,109(r31)
    stb     r30,110(r31)
L02030a30:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
