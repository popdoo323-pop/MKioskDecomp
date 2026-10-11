# Converted from the disassembly of 0x024c1dd8 (248 bytes). Name is a placeholder.
    .text
    .globl Batch_024c1dd8
Batch_024c1dd8:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    mr      r31,r3
    stw     r0,36(r1)
    lwz     r10,32(r31)
    lwz     r9,0(r10)
    lwz     r11,4(r9)
    cmpwi   r11,1
    beq-    L024c1e3c
    lwz     r0,28(r31)
    cmplwi  r0,1
    ble-    L024c1e2c
    lwz     r12,4(r10)
    lwz     r9,4(r12)
    cmpwi   r9,0
    bne-    L024c1eb0
    b       L024c1e3c
L024c1e2c:
    lwz     r12,0(r10)
    lwz     r9,4(r12)
    cmpwi   r9,0
    bne-    L024c1eb0
L024c1e3c:
    li      r4,0
    lwz     r3,0(r10)
    li      r6,1
    mr      r5,r4
    bl      ext_0247faa4
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r11,32(r31)
    ble-    L024c1e64
    addi    r11,r11,4
L024c1e64:
    lis     r12,4107
    lfs     f31,-26364(r12)
    fmr     f1,f31
    lwz     r3,0(r11)
    li      r4,0
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    lwz     r11,28(r31)
    cmplwi  r11,1
    lwz     r12,32(r31)
    ble-    L024c1e98
    addi    r12,r12,4
L024c1e98:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,1
    bl      ext_0247f968
    li      r0,1
    stb     r0,96(r31)
L024c1eb0:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
