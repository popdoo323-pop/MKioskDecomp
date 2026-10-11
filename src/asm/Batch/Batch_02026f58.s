# Converted from the disassembly of 0x02026f58 (232 bytes). Name is a placeholder.
    .text
    .globl Batch_02026f58
Batch_02026f58:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lwz     r11,20(r30)
    lwz     r3,8(r11)
    lwz     r31,0(r30)
    bl      ext_0203052c
    cmplwi  r3,12
    addi    r12,r31,392
    bge-    L02026f94
    slwi    r0,r3,2
    add     r12,r12,r0
L02026f94:
    mr      r3,r30
    lwz     r31,0(r12)
    bl      ext_02026e48
    cmpwi   r3,0
    beq-    L02026ff4
    lis     r9,4096
    lis     r12,17200
    slwi    r31,r31,1
    lfd     f0,10896(r9)
    xoris   r0,r31,32768
    stw     r12,8(r1)
    stw     r0,12(r1)
    lfd     f13,8(r1)
    fsub    f0,f13,f0
    lis     r8,4096
    frsp    f0,f0
    lfs     f13,10904(r8)
    fcmpu   cr0,f0,f13
    ble-    L02026fe4
    fmr     f0,f13
L02026fe4:
    fctiwz  f0,f0
    addi    r0,r1,8
    stfiwx  f0,0,r0
    lwz     r31,8(r1)
L02026ff4:
    lwz     r11,20(r30)
    lwz     r6,8(r11)
    lwz     r3,84(r6)
    bl      ext_02185c90
    cmpwi   r3,0
    lwz     r3,12(r30)
    beq-    L02027014
    li      r31,0
L02027014:
    li      r4,100
    bl      ext_02008eb0
    cmpw    r3,r31
    lwz     r0,28(r1)
    mfcr    r10
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    srwi    r3,r10,31
    blr
