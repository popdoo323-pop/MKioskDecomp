# Converted from the disassembly of 0x024e5bc4 (396 bytes). Name is a placeholder.
    .text
    .globl Batch_024e5bc4
Batch_024e5bc4:
    mflr    r0
    stwu    r1,-40(r1)
    stfd    f31,24(r1)
    ps_merge10 f31,f31,f31
    stw     r29,12(r1)
    stfs    f31,32(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    stw     r0,44(r1)
    mr      r29,r3
    lis     r10,4107
    lbz     r0,400(r29)
    lfs     f31,-9236(r10)
    cmpwi   r0,0
    lwz     r11,200(r29)
    beq-    L024e5c64
    lwz     r6,32(r11)
    lwz     r3,0(r6)
    li      r4,1
    bl      ext_0247fce4
    lwz     r12,200(r29)
    stw     r3,132(r29)
    lwz     r7,32(r12)
    fmr     f1,f31
    lwz     r3,0(r7)
    li      r4,1
    bl      ext_0247f854
    lwz     r8,296(r29)
    lwz     r9,20(r8)
    mtctr   r9
    addi    r3,r29,292
    bctrl
    lwz     r5,292(r29)
    lwz     r3,204(r29)
    lwz     r4,212(r29)
    bl      ext_024e4764
    lwz     r3,212(r29)
    li      r4,0
    bl      ext_0218ecd8
    b       L024e5d28
L024e5c64:
    lwz     r0,28(r11)
    cmplwi  r0,1
    lwz     r12,32(r11)
    ble-    L024e5c78
    addi    r12,r12,4
L024e5c78:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f854
    lwz     r12,220(r29)
    lwz     r0,20(r12)
    mtctr   r0
    lwz     r30,292(r29)
    addi    r3,r29,216
    bctrl
    lwz     r9,216(r29)
    lhz     r6,0(r9)
    li      r31,0
    cmpwi   r6,0
    lis     r10,8
    beq-    L024e5cdc
L024e5cb8:
    addi    r31,r31,1
    cmpw    r31,r10
    addi    r9,r9,2
    bgt-    L024e5cd8
    lhz     r7,0(r9)
    cmpwi   r7,0
    bne+    L024e5cb8
    b       L024e5cdc
L024e5cd8:
    li      r31,0
L024e5cdc:
    lwz     r11,300(r29)
    lwz     r8,220(r29)
    cmpw    r31,r11
    lwz     r0,20(r8)
    blt-    L024e5cf4
    addi    r31,r11,-1
L024e5cf4:
    mtctr   r0
    addi    r3,r29,216
    bctrl
    lwz     r4,216(r29)
    li      r6,0
    slwi    r5,r31,1
    mr      r3,r30
    bl      ext_029aacf0
    slwi    r10,r31,1
    li      r4,0
    sthx    r4,r10,r30
    lwz     r3,212(r29)
    bl      ext_0218ecd8
L024e5d28:
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
