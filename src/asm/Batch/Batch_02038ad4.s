# Converted from the disassembly of 0x02038ad4 (364 bytes). Name is a placeholder.
    .text
    .globl Batch_02038ad4
Batch_02038ad4:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stw     r28,8(r1)
    stw     r29,12(r1)
    stw     r31,20(r1)
    stw     r30,16(r1)
    stw     r0,44(r1)
    mr      r30,r3
    stfs    f31,32(r1)
    lbz     r0,548(r30)
    cmpwi   r0,0
    beq-    L02038c14
    addi    r3,r30,500
    bl      ext_0262ef74
    li      r31,0
    li      r28,14
    mr      r29,r31
L02038b20:
    lwz     r12,448(r30)
    add     r3,r12,r29
    lwz     r9,20(r3)
    lwz     r0,20(r9)
    mtctr   r0
    bctrl
    lwz     r11,452(r30)
    add     r3,r11,r29
    lwz     r11,20(r3)
    lwz     r0,20(r11)
    mtctr   r0
    bctrl
    lwz     r10,456(r30)
    add     r3,r10,r29
    lwz     r12,20(r3)
    lwz     r5,20(r12)
    mtctr   r5
    bctrl
    lwz     r6,460(r30)
    cmplw   r31,r6
    li      r3,0
    bge-    L02038b84
    lwz     r8,468(r30)
    slwi    r7,r31,2
    lwzx    r3,r7,r8
L02038b84:
    lwz     r9,20(r3)
    lwz     r0,20(r9)
    mtctr   r0
    bctrl
    lwz     r11,448(r30)
    lwz     r5,452(r30)
    lwz     r7,460(r30)
    li      r3,0
    lfsx    f0,r5,r29
    add     r12,r11,r29
    lwz     r6,456(r30)
    cmplw   r31,r7
    add     r10,r5,r29
    lfs     f13,0(r12)
    add     r11,r6,r29
    bge-    L02038bd0
    lwz     r0,468(r30)
    slwi    r8,r31,2
    lwzx    r3,r8,r0
L02038bd0:
    fmuls   f13,f13,f0
    lfs     f0,0(r11)
    li      r4,2
    fmuls   f31,f13,f0
    bl      ext_0262f398
    lfs     f0,500(r30)
    fmuls   f31,f31,f1
    mr      r4,r31
    addi    r3,r30,4
    fmuls   f31,f31,f0
    bl      ext_02598144
    fmr     f1,f31
    bl      ext_0259bfe8
    addic.  r28,r28,-1
    addi    r31,r31,1
    addi    r29,r29,24
    bne+    L02038b20
L02038c14:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lfs     f31,32(r1)
    lwz     r30,16(r1)
    lfd     f31,24(r1)
    lwz     r31,20(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
