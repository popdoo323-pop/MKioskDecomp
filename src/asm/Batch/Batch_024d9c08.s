# Converted from the disassembly of 0x024d9c08 (200 bytes). Name is a placeholder.
    .text
    .globl Batch_024d9c08
Batch_024d9c08:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r0,76(r31)
    cmpwi   r0,5
    bne-    L024d9cb0
    lwz     r0,200(r31)
    cmpwi   r0,0
    beq-    L024d9cb0
    lwz     r0,84(r31)
    lis     r12,4107
    cmpwi   r0,45
    lfs     f31,-14988(r12)
    bne-    L024d9c68
    lwz     r9,68(r31)
    fmr     f1,f31
    lwz     r3,0(r9)
    li      r4,0
    bl      ext_0247f854
L024d9c68:
    lwz     r10,68(r31)
    lwz     r3,0(r10)
    lwz     r4,4(r3)
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024d9cb0
    lwz     r12,68(r31)
    lwz     r11,0(r12)
    lwz     r10,4(r11)
    cmpwi   r10,0
    bne-    L024d9cb0
    lwz     r3,200(r31)
    bl      ext_024800e0
    lwz     r9,68(r31)
    fmr     f1,f31
    lwz     r3,0(r9)
    li      r4,1
    bl      ext_0247f854
L024d9cb0:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
