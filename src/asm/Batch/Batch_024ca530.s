# Converted from the disassembly of 0x024ca530 (472 bytes). Name is a placeholder.
    .text
    .globl Batch_024ca530
Batch_024ca530:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lfs     f11,188(r31)
    lis     r12,4124
    lfs     f13,0(r4)
    lwzu    r8,26712(r12)
    fcmpu   cr0,f13,f11
    lwz     r9,4(r12)
    stw     r8,8(r1)
    stw     r9,12(r1)
    lfs     f0,196(r31)
    bge-    L024ca594
    lfs     f12,4(r4)
    fmr     f13,f11
    lfs     f0,192(r31)
    lfs     f11,200(r31)
    fcmpu   cr0,f12,f0
    lwz     r5,172(r31)
    lwz     r0,228(r31)
    stfs    f13,8(r1)
    blt-    L024ca5c0
    b       L024ca5e0
L024ca594:
    fcmpu   cr0,f13,f0
    ble-    L024ca5a0
    fmr     f13,f0
L024ca5a0:
    lfs     f12,4(r4)
    lfs     f0,192(r31)
    lfs     f11,200(r31)
    fcmpu   cr0,f12,f0
    stfs    f13,8(r1)
    lwz     r0,228(r31)
    lwz     r5,172(r31)
    bge-    L024ca5e0
L024ca5c0:
    lfs     f12,8(r1)
    cmplw   r0,r5
    lwz     r12,176(r31)
    stfs    f0,12(r1)
    stfs    f13,204(r31)
    stfs    f0,208(r31)
    blt-    L024ca608
L024ca5dc:
    b       L024ca610
L024ca5e0:
    fcmpu   cr0,f12,f11
    ble-    L024ca5ec
    fmr     f12,f11
L024ca5ec:
    stfs    f12,208(r31)
    cmplw   r0,r5
    stfs    f12,12(r1)
    lwz     r12,176(r31)
    stfs    f13,204(r31)
    lfs     f12,8(r1)
    bge+    L024ca5dc
L024ca608:
    slwi    r6,r0,2
    add     r12,r12,r6
L024ca610:
    lfs     f11,0(r12)
    lwz     r11,184(r31)
    fsubs   f0,f11,f12
    lwz     r0,180(r31)
    lwz     r8,232(r31)
    stfs    f0,236(r31)
    cmplw   r8,r0
    lfs     f13,12(r1)
    bge-    L024ca63c
    slwi    r0,r8,2
    add     r11,r11,r0
L024ca63c:
    lfs     f12,0(r11)
    lwz     r9,104(r31)
    fsubs   f0,f12,f13
    lfs     f13,8(r1)
    mr      r3,r31
    addi    r6,r9,-1
    li      r5,0
    fmr     f1,f13
    li      r7,1
    stfs    f0,240(r31)
    addi    r4,r31,172
    bl      ext_024c9b50
    lfs     f12,12(r1)
    addi    r4,r31,180
    lwz     r6,108(r31)
    fmr     f1,f12
    stw     r3,212(r31)
    mr      r3,r31
    addi    r6,r6,-1
    bl      ext_024c9b50
    lfs     f11,136(r31)
    mr      r7,r5
    lwz     r10,104(r31)
    fadds   f1,f13,f11
    lwz     r5,212(r31)
    addi    r4,r31,172
    addi    r6,r10,-1
    stw     r3,216(r31)
    mr      r3,r31
    bl      ext_024c9b50
    lfs     f0,140(r31)
    lwz     r12,108(r31)
    fadds   f1,f12,f0
    lwz     r5,216(r31)
    addi    r4,r31,180
    stw     r3,220(r31)
    mr      r3,r31
    addi    r6,r12,-1
    bl      ext_024c9b50
    lwz     r0,324(r31)
    cmpwi   r0,0
    stw     r3,224(r31)
    beq-    L024ca6f4
    fmr     f1,f12
    mr      r3,r0
    bl      ext_024c9494
L024ca6f4:
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
