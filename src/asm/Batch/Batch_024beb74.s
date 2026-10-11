# Converted from the disassembly of 0x024beb74 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_024beb74
Batch_024beb74:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r11,32(r31)
    ble-    L024beba8
    addi    r11,r11,4
L024beba8:
    lis     r10,4107
    lfs     f31,-30612(r10)
    fmr     f1,f31
    lwz     r3,0(r11)
    li      r4,1
    bl      ext_0247f968
    lwz     r0,28(r31)
    cmplwi  r0,2
    lwz     r12,32(r31)
    ble-    L024bebd4
    addi    r12,r12,8
L024bebd4:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,0
    bl      ext_0247f968
    li      r8,0
    sth     r8,220(r31)
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
