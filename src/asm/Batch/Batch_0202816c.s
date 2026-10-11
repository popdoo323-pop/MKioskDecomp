# Converted from the disassembly of 0x0202816c (448 bytes). Name is a placeholder.
    .text
    .globl Batch_0202816c
Batch_0202816c:
    stwu    r1,-24(r1)
    lwz     r0,52(r3)
    lwz     r10,60(r3)
    cmpw    r10,r0
    blt-    L020281e8
    cmpwi   r10,0
    ble-    L020281c4
    lwz     r9,56(r3)
    cmpw    r9,r0
    lwz     r12,48(r3)
    blt-    L0202819c
    subf    r9,r0,r9
L0202819c:
    slwi    r0,r9,2
    lfs     f12,44(r3)
    lfsx    f0,r12,r0
    lwz     r10,60(r3)
    fsubs   f12,f12,f0
    lwz     r0,52(r3)
    cmpw    r10,r0
    stfs    f12,44(r3)
    blt-    L020281e8
    b       L0202821c
L020281c4:
    lwz     r11,48(r3)
    lfs     f12,44(r3)
    lfs     f0,0(r11)
    lwz     r10,60(r3)
    fsubs   f12,f12,f0
    lwz     r0,52(r3)
    cmpw    r10,r0
    stfs    f12,44(r3)
    bge-    L0202821c
L020281e8:
    lwz     r12,56(r3)
    lwz     r0,52(r3)
    add     r11,r12,r10
    addi    r10,r10,1
    stw     r10,60(r3)
    cmpw    r11,r0
    lwz     r10,48(r3)
    blt-    L0202820c
    subf    r11,r0,r11
L0202820c:
    slwi    r9,r11,2
    stfsx   f1,r9,r10
    lwz     r10,60(r3)
    b       L0202828c
L0202821c:
    cmpwi   r10,0
    ble-    L020282d8
    lwz     r12,56(r3)
    lwz     r0,52(r3)
    addi    r12,r12,1
    stw     r12,56(r3)
    cmpw    r12,r0
    lwz     r10,60(r3)
    blt-    L02028248
    li      r0,0
    stw     r0,56(r3)
L02028248:
    lwz     r0,52(r3)
    addi    r10,r10,-1
    cmpw    r10,r0
    stw     r10,60(r3)
    bge-    L0202828c
    lwz     r9,56(r3)
    addi    r12,r10,1
    lwz     r0,52(r3)
    add     r11,r9,r10
    lwz     r10,48(r3)
    cmpw    r11,r0
    stw     r12,60(r3)
    blt-    L02028280
    subf    r11,r0,r11
L02028280:
    slwi    r9,r11,2
    stfsx   f1,r9,r10
    lwz     r10,60(r3)
L0202828c:
    cmpwi   r10,0
    ble-    L020282d8
    lwz     r9,56(r3)
    add     r12,r9,r10
    lwz     r0,52(r3)
    addi    r11,r12,-1
    cmpw    r11,r0
    lwz     r12,48(r3)
    blt-    L020282b4
    subf    r11,r0,r11
L020282b4:
    slwi    r11,r11,2
    lfs     f12,44(r3)
    lfsx    f13,r12,r11
    lwz     r10,60(r3)
    fadds   f12,f12,f13
    cmpwi   r10,0
    stfs    f12,44(r3)
    beq-    L02028324
    b       L020282f8
L020282d8:
    lwz     r10,48(r3)
    lfs     f12,44(r3)
    lfs     f13,0(r10)
    lwz     r10,60(r3)
    fadds   f12,f12,f13
    cmpwi   r10,0
    stfs    f12,44(r3)
    beq-    L02028324
L020282f8:
    lis     r11,4096
    xoris   r9,r10,32768
    lfd     f0,11104(r11)
    lis     r0,17200
    stw     r9,12(r1)
    stw     r0,8(r1)
    lfd     f13,8(r1)
    fsub    f0,f13,f0
    frsp    f13,f0
    fdivs   f12,f12,f13
    stfs    f12,40(r3)
L02028324:
    addi    r1,r1,24
    blr
