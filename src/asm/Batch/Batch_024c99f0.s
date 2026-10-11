# Converted from the disassembly of 0x024c99f0 (352 bytes). Name is a placeholder.
    .text
    .globl Batch_024c99f0
Batch_024c99f0:
    lwz     r12,92(r3)
    lwz     r10,0(r5)
    cmplw   r10,r12
    lwz     r11,4(r5)
    bge-    L024c9a30
    lwz     r9,96(r3)
    cmplw   r11,r9
    bge-    L024c9a30
    mullw   r12,r12,r11
    add     r9,r12,r10
    lwz     r12,100(r3)
    slwi    r9,r9,4
    cmpwi   r6,0
    add     r9,r12,r9
    beq-    L024c9aa0
    b       L024c9a3c
L024c9a30:
    cmpwi   r6,0
    lwz     r9,100(r3)
    beq-    L024c9aa0
L024c9a3c:
    lwz     r12,172(r3)
    lfs     f11,0(r4)
    cmplw   r10,r12
    lwz     r12,176(r3)
    bge-    L024c9a58
    slwi    r11,r10,2
    add     r12,r12,r11
L024c9a58:
    lfs     f0,0(r12)
    lwz     r11,112(r3)
    fsubs   f0,f0,f11
    lbz     r10,6(r9)
    lfs     f12,144(r3)
    cmplw   r10,r11
    lwz     r12,116(r3)
    bge-    L024c9a80
    mulli   r11,r10,12
    add     r12,r12,r11
L024c9a80:
    lfs     f10,136(r3)
    fcmpu   cr0,f0,f12
    lfs     f13,152(r3)
    fsubs   f13,f10,f13
    lfs     f11,4(r12)
    fsubs   f13,f13,f11
    bge-    L024c9b14
    b       L024c9b00
L024c9aa0:
    lwz     r12,180(r3)
    lfs     f13,4(r4)
    cmplw   r11,r12
    lwz     r12,184(r3)
    bge-    L024c9abc
    slwi    r11,r11,2
    add     r12,r12,r11
L024c9abc:
    lfs     f12,0(r12)
    lwz     r11,112(r3)
    fsubs   f0,f12,f13
    lbz     r10,6(r9)
    lfs     f12,148(r3)
    cmplw   r10,r11
    lwz     r12,116(r3)
    bge-    L024c9ae4
    mulli   r11,r10,12
    add     r12,r12,r11
L024c9ae4:
    lfs     f10,140(r3)
    fcmpu   cr0,f0,f12
    lfs     f13,156(r3)
    fsubs   f13,f10,f13
    lfs     f11,8(r12)
    fsubs   f13,f13,f11
    bge-    L024c9b14
L024c9b00:
    cmpwi   r7,0
    beq-    L024c9b2c
    fsubs   f12,f0,f12
    stfs    f12,0(r7)
    b       L024c9b2c
L024c9b14:
    fcmpu   cr0,f0,f13
    ble-    L024c9b34
    cmpwi   r7,0
    beq-    L024c9b2c
    fsubs   f12,f0,f13
    stfs    f12,0(r7)
L024c9b2c:
    li      r3,1
    blr
L024c9b34:
    cmpwi   r7,0
    beq-    L024c9b48
    lis     r12,4107
    lfs     f0,-20376(r12)
    stfs    f0,0(r7)
L024c9b48:
    li      r3,0
    blr
