# Converted from the disassembly of 0x024bf94c (372 bytes). Name is a placeholder.
    .text
    .globl Batch_024bf94c
Batch_024bf94c:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    mr      r31,r3
    lis     r7,4107
    stw     r30,8(r1)
    stw     r0,36(r1)
    lbz     r6,298(r31)
    lfs     f31,-30608(r7)
    cmpwi   r6,0
    li      r30,0
    beq-    L024bfa0c
    lwz     r0,28(r31)
    cmplwi  r0,3
    lwz     r11,32(r31)
    ble-    L024bf9ac
    lwz     r8,12(r11)
    lwz     r9,4(r8)
    cmpwi   r9,0
    bne-    L024bfa0c
    b       L024bf9bc
L024bf9ac:
    lwz     r8,0(r11)
    lwz     r9,4(r8)
    cmpwi   r9,0
    bne-    L024bfa0c
L024bf9bc:
    cmplwi  r0,3
    ble-    L024bf9c8
    addi    r11,r11,12
L024bf9c8:
    lwz     r3,0(r11)
    lwz     r4,4(r3)
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024bfa0c
    mr      r3,r31
    bl      ext_024800e0
    lwz     r12,28(r31)
    cmplwi  r12,3
    lwz     r12,32(r31)
    ble-    L024bf9f8
    addi    r12,r12,12
L024bf9f8:
    fmr     f1,f31
    lwz     r3,0(r12)
    li      r4,1
    bl      ext_0247f854
    stb     r30,298(r31)
L024bfa0c:
    lbz     r0,299(r31)
    cmpwi   r0,0
    beq-    L024bfa9c
    lwz     r0,28(r31)
    cmplwi  r0,4
    lwz     r11,32(r31)
    ble-    L024bfa3c
    lwz     r10,16(r11)
    lwz     r6,4(r10)
    cmpwi   r6,0
    bne-    L024bfa9c
    b       L024bfa4c
L024bfa3c:
    lwz     r10,0(r11)
    lwz     r6,4(r10)
    cmpwi   r6,0
    bne-    L024bfa9c
L024bfa4c:
    cmplwi  r0,4
    ble-    L024bfa58
    addi    r11,r11,16
L024bfa58:
    lwz     r3,0(r11)
    lwz     r4,4(r3)
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024bfa9c
    mr      r3,r31
    bl      ext_024800e0
    lwz     r7,28(r31)
    cmplwi  r7,4
    lwz     r10,32(r31)
    ble-    L024bfa88
    addi    r10,r10,16
L024bfa88:
    fmr     f1,f31
    lwz     r3,0(r10)
    li      r4,1
    bl      ext_0247f854
    stb     r30,299(r31)
L024bfa9c:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
