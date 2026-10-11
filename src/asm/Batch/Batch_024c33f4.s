# Converted from the disassembly of 0x024c33f4 (212 bytes). Name is a placeholder.
    .text
    .globl Batch_024c33f4
Batch_024c33f4:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stfs    f31,24(r1)
    stw     r31,12(r1)
    lis     r12,4107
    lfs     f31,-25828(r12)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r11,32(r31)
    lwz     r3,0(r11)
    fmr     f1,f31
    li      r4,0
    bl      ext_0247f854
    lbz     r11,96(r31)
    lwz     r0,28(r31)
    cmpwi   r11,0
    lwz     r12,32(r31)
    beq-    L024c3480
    cmplwi  r0,1
    ble-    L024c3450
    addi    r12,r12,4
L024c3450:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f854
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L024c3480:
    cmplwi  r0,1
    ble-    L024c348c
    addi    r12,r12,4
L024c348c:
    lwz     r31,0(r12)
    li      r4,2
    mr      r3,r31
    bl      ext_0247fc68
    li      r4,2
    mr      r3,r31
    bl      ext_0247f968
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
