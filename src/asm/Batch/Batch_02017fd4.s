# Converted from the disassembly of 0x02017fd4 (292 bytes). Name is a placeholder.
    .text
    .globl Batch_02017fd4
Batch_02017fd4:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,32(r1)
    stw     r0,44(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r31,r3
    lwz     r10,72(r31)
    lwz     r3,84(r10)
    lwz     r30,152(r31)
    bl      ext_02185c38
    lwz     r8,44(r30)
    lwz     r11,48(r30)
    cmplw   r3,r8
    lwz     r10,72(r31)
    bge-    L02018024
    mulli   r0,r3,108
    add     r11,r11,r0
L02018024:
    lwz     r3,84(r10)
    lfs     f31,20(r11)
    bl      ext_02185c38
    lwz     r10,152(r31)
    lwz     r8,44(r10)
    cmplw   r3,r8
    lwz     r12,48(r10)
    bge-    L0201805c
    mulli   r0,r3,108
    add     r11,r12,r0
    lbz     r9,28(r11)
    extsb.  r9,r9
    blt-    L02018068
    b       L02018094
L0201805c:
    lbz     r9,28(r12)
    extsb.  r9,r9
    bge-    L02018094
L02018068:
    lis     r9,4096
    lis     r0,-32768
    lfd     f0,5840(r9)
    lis     r12,17200
    stw     r0,12(r1)
    stw     r12,8(r1)
    lfd     f11,8(r1)
    fsub    f12,f11,f0
    frsp    f13,f12
    fsubs   f1,f31,f13
    b       L020180d4
L02018094:
    cmplw   r3,r8
    bge-    L020180a4
    mulli   r0,r3,108
    add     r12,r12,r0
L020180a4:
    lbz     r0,28(r12)
    lis     r12,17200
    lis     r9,4096
    stw     r12,8(r1)
    extsb   r0,r0
    lfd     f0,5840(r9)
    xoris   r0,r0,32768
    stw     r0,12(r1)
    lfd     f11,8(r1)
    fsub    f12,f11,f0
    frsp    f13,f12
    fsubs   f1,f31,f13
L020180d4:
    lfs     f31,32(r1)
    lwz     r31,20(r1)
    lfd     f31,24(r1)
    lwz     r30,16(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
