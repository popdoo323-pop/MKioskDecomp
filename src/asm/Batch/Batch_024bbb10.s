# Converted from the disassembly of 0x024bbb10 (444 bytes). Name is a placeholder.
    .text
    .globl Batch_024bbb10
Batch_024bbb10:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    stw     r29,12(r1)
    ps_merge10 f31,f31,f31
    stw     r31,20(r1)
    stfs    f31,32(r1)
    mr.     r31,r3
    stw     r30,16(r1)
    stw     r0,44(r1)
    bne-    L024bbb4c
    li      r3,220
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L024bbca0
L024bbb4c:
    mr      r3,r31
    bl      ext_024b3a78
    lis     r12,4107
    lis     r9,4107
    lfs     f31,-32244(r12)
    li      r29,0
    addi    r9,r9,-31252
    stw     r29,56(r31)
    stw     r9,52(r31)
    addic.  r10,r31,64
    stfs    f31,60(r31)
    bne-    L024bbb84
    li      r3,12
    bl      ext_0260128c
L024bbb84:
    stfs    f31,76(r31)
    li      r11,1000
    addic.  r12,r31,84
    stw     r11,80(r31)
    bne-    L024bbba0
    li      r3,12
    bl      ext_0260128c
L024bbba0:
    addic.  r0,r31,96
    bne-    L024bbbb0
    li      r3,12
    bl      ext_0260128c
L024bbbb0:
    lis     r6,588
    addi    r3,r31,108
    li      r4,2
    addi    r6,r6,-18320
    li      r5,4
    bl      ext_0292e4a4
    lis     r6,588
    addi    r3,r31,116
    li      r4,3
    addi    r6,r6,-18256
    li      r5,4
    bl      ext_0292e4a4
    lis     r30,4124
    addic.  r3,r31,128
    addi    r30,r30,26744
    bne-    L024bbc00
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024bbc1c
L024bbc00:
    lwz     r9,0(r30)
    stw     r9,0(r3)
    lwz     r10,4(r30)
    stw     r10,4(r3)
    lwz     r11,8(r30)
    stfs    f31,12(r3)
    stw     r11,8(r3)
L024bbc1c:
    addic.  r3,r31,144
    bne-    L024bbc34
    li      r3,16
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L024bbc50
L024bbc34:
    lwz     r0,0(r30)
    stw     r0,0(r3)
    lwz     r0,4(r30)
    stw     r0,4(r3)
    lwz     r0,8(r30)
    stfs    f31,12(r3)
    stw     r0,8(r3)
L024bbc50:
    stw     r29,168(r31)
    addic.  r9,r31,172
    stb     r29,161(r31)
    stw     r29,164(r31)
    stb     r29,160(r31)
    bne-    L024bbc70
    li      r3,12
    bl      ext_0260128c
L024bbc70:
    li      r12,3
    lis     r10,4124
    addi    r11,r31,180
    mtctr   r12
    addi    r10,r10,25368
L024bbc84:
    lwz     r0,4(r10)
    stw     r0,4(r11)
    lwz     r7,8(r10)
    stw     r7,8(r11)
    lwzu    r8,12(r10)
    stwu    r8,12(r11)
    bdnz+   L024bbc84
L024bbca0:
    lwz     r29,12(r1)
    lfs     f31,32(r1)
    lwz     r30,16(r1)
    lfd     f31,24(r1)
    mr      r3,r31
    lwz     r31,20(r1)
    isync
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
