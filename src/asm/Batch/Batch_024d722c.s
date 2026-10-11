# Converted from the disassembly of 0x024d722c (424 bytes). Name is a placeholder.
    .text
    .globl Batch_024d722c
Batch_024d722c:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lwz     r9,568(r31)
    lwz     r12,1676(r31)
    cmpw    r12,r9
    mr      r30,r4
    bge-    L024d73bc
    lwz     r0,4(r30)
    lwz     r7,120(r31)
    cmplw   r0,r7
    lwz     r11,124(r31)
    bge-    L024d7274
    slwi    r0,r0,3
    add     r11,r11,r0
L024d7274:
    xoris   r7,r9,32768
    lis     r8,4107
    stw     r7,12(r1)
    lfs     f10,4(r11)
    lis     r0,17200
    lfs     f11,-17240(r8)
    lfs     f12,4(r5)
    lis     r10,4107
    stw     r0,8(r1)
    lfd     f13,8(r1)
    fmadds  f11,f11,f10,f12
    lfd     f0,-17256(r10)
    fsub    f12,f13,f0
    lis     r11,4107
    fneg    f1,f11
    lfs     f13,-17468(r11)
    lis     r9,4107
    frsp    f11,f12
    lfs     f12,-17264(r9)
    fcmpu   cr0,f1,f13
    lwz     r8,28(r31)
    fmuls   f0,f11,f12
    bge-    L024d72e4
    cmplw   r12,r8
    lwz     r10,32(r31)
    fmr     f1,f13
    blt-    L024d72fc
L024d72e0:
    b       L024d7304
L024d72e4:
    fcmpu   cr0,f1,f0
    ble-    L024d72f0
    fmr     f1,f0
L024d72f0:
    cmplw   r12,r8
    lwz     r10,32(r31)
    bge+    L024d72e0
L024d72fc:
    slwi    r9,r12,2
    add     r10,r10,r9
L024d7304:
    lwz     r3,0(r10)
    li      r4,0
    bl      ext_0247f968
    lwz     r0,1676(r31)
    cmplwi  r0,6
    addi    r3,r31,572
    bge-    L024d7358
    mulli   r0,r0,184
    lfs     f11,1692(r31)
    add     r11,r3,r0
    lwz     r7,4(r11)
    lfs     f0,100(r7)
    fadds   f13,f0,f11
    lwz     r12,1676(r31)
    fsubs   f12,f0,f11
    stfs    f13,492(r31)
    cmplwi  r12,6
    stfs    f12,496(r31)
    lwz     r4,0(r30)
    blt-    L024d7384
L024d7354:
    b       L024d738c
L024d7358:
    lwz     r7,4(r3)
    lfs     f11,1692(r31)
    lfs     f0,100(r7)
    fadds   f13,f0,f11
    lwz     r12,1676(r31)
    fsubs   f12,f0,f11
    stfs    f13,492(r31)
    cmplwi  r12,6
    stfs    f12,496(r31)
    lwz     r4,0(r30)
    bge+    L024d7354
L024d7384:
    mulli   r9,r12,184
    add     r3,r3,r9
L024d738c:
    cmpwi   r4,-1
    li      r0,0
    beq-    L024d73a8
    lwz     r12,1688(r31)
    cmplw   r4,r12
    bne-    L024d73a8
    li      r0,1
L024d73a8:
    clrlwi  r5,r0,24
    bl      ext_024d6f50
    lwz     r9,1676(r31)
    addi    r9,r9,1
    stw     r9,1676(r31)
L024d73bc:
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
