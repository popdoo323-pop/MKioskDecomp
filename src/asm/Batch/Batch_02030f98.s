# Converted from the disassembly of 0x02030f98 (716 bytes). Name is a placeholder.
    .text
    .globl Batch_02030f98
Batch_02030f98:
    stwu    r1,-104(r1)
    stfd    f28,40(r1)
    ps_merge10 f28,f28,f28
    stfd    f30,72(r1)
    ps_merge10 f30,f30,f30
    stfd    f31,88(r1)
    stfd    f27,24(r1)
    mflr    r0
    stfs    f28,48(r1)
    ps_merge10 f27,f27,f27
    stfs    f30,80(r1)
    ps_merge10 f31,f31,f31
    stw     r30,16(r1)
    stfs    f31,96(r1)
    stfs    f27,32(r1)
    fmr     f31,f1
    stfd    f29,56(r1)
    stw     r29,12(r1)
    ps_merge10 f29,f29,f29
    stw     r0,108(r1)
    stfs    f29,64(r1)
    lis     r12,4120
    stw     r31,20(r1)
    lfs     f13,-12400(r12)
    mr      r29,r3
    lis     r11,4096
    fcmpu   cr0,f13,f31
    lfs     f28,16188(r11)
    bge-    L02031028
    lwz     r12,116(r29)
    addi    r12,r12,1
    fmr     f31,f13
    cmpwi   r12,3
    stw     r12,116(r29)
    blt-    L02031070
    b       L0203104c
L02031028:
    fneg    f9,f13
    fcmpu   cr0,f9,f31
    ble-    L02031068
    lwz     r12,116(r29)
    addi    r12,r12,1
    fmr     f31,f9
    cmpwi   r12,3
    stw     r12,116(r29)
    blt-    L02031070
L0203104c:
    fcmpu   cr0,f31,f28
    lis     r11,4120
    lfs     f31,-12388(r11)
    bge-    L02031060
    fneg    f31,f31
L02031060:
    cmpwi   r12,180
    blt-    L02031070
L02031068:
    li      r0,0
    stw     r0,116(r29)
L02031070:
    mr      r3,r29
    bl      ext_02030e90
    cmpwi   r3,0
    bne-    L02031090
    lwz     r3,84(r29)
    bl      ext_0218608c
    cmpwi   r3,0
    beq-    L02031094
L02031090:
    fmr     f31,f28
L02031094:
    fneg    f12,f31
    lwz     r12,88(r29)
    stfs    f12,16(r12)
    lwz     r12,152(r29)
    li      r31,0
    cmpwi   r12,-1
    lwz     r11,64(r29)
    beq-    L020310c8
    lwz     r10,68(r29)
    lbz     r0,80(r10)
    cmpwi   r0,0
    beq-    L020310c8
    li      r31,1
L020310c8:
    lwz     r10,88(r11)
    lwz     r12,68(r10)
    clrlwi  r31,r31,24
    fmr     f27,f28
    rlwinm. r11,r12,0,28,28
    li      r30,0
    bne-    L02031158
    lwz     r3,84(r29)
    bl      ext_02186008
    cmpwi   r3,0
    bne-    L02031158
    lwz     r3,84(r29)
    bl      ext_0218606c
    cmpwi   r3,0
    beq-    L02031140
    lwz     r3,84(r29)
    bl      ext_02185f5c
    cmpwi   r3,0
    beq-    L02031140
    lwz     r3,84(r29)
    bl      ext_0218608c
    cmpwi   r3,0
    bne-    L02031140
    lwz     r0,124(r29)
    cmpwi   r0,60
    ble-    L02031140
    lwz     r3,84(r29)
    bl      ext_0218641c
    cmpwi   r3,30
    bgt-    L02031158
L02031140:
    lbz     r0,132(r29)
    cmpwi   r0,0
    bne-    L02031158
    cmpwi   r31,0
    bne-    L02031158
    li      r30,1
L02031158:
    lis     r11,4096
    lis     r10,4096
    lfs     f29,16208(r11)
    clrlwi. r30,r30,24
    lfs     f30,16212(r10)
    beq-    L020311d4
    lis     r12,4120
    lfs     f0,-12384(r12)
    fdivs   f10,f31,f0
    fneg    f27,f10
    fcmpu   cr0,f30,f27
    bge-    L020311ac
    fmr     f27,f30
    fmr     f1,f27
    mr      r3,r29
    bl      ext_02030ef4
    fmr     f1,f27
    mr      r4,r30
    mr      r3,r29
    bl      ext_02030f78
    b       L020311d4
L020311ac:
    fcmpu   cr0,f29,f27
    ble-    L020311b8
    fmr     f27,f29
L020311b8:
    fmr     f1,f27
    mr      r3,r29
    bl      ext_02030ef4
    fmr     f1,f27
    mr      r4,r30
    mr      r3,r29
    bl      ext_02030f78
L020311d4:
    lbz     r0,108(r29)
    cmpwi   r0,0
    beq-    L020311f4
    fmr     f1,f28
    mr      r3,r29
    bl      ext_02030f84
    bl      ext_02030ef4
    b       L0203121c
L020311f4:
    lwz     r0,152(r29)
    cmpwi   r0,-1
    beq-    L0203121c
    cmpwi   r31,0
    bne-    L0203121c
    fneg    f11,f27
    fsel    f27,f11,f29,f30
    fmr     f1,f27
    mr      r3,r29
    bl      ext_02030ef4
L0203121c:
    lwz     r29,12(r1)
    lfs     f28,48(r1)
    lfs     f27,32(r1)
    lfd     f28,40(r1)
    lfs     f29,64(r1)
    lfd     f27,24(r1)
    lfd     f29,56(r1)
    lfs     f31,96(r1)
    lfs     f30,80(r1)
    lfd     f31,88(r1)
    lfd     f30,72(r1)
    lwz     r31,20(r1)
    lwz     r30,16(r1)
    isync
    lwz     r0,108(r1)
    mtlr    r0
    addi    r1,r1,104
    blr
