# Converted from the disassembly of 0x024ca420 (272 bytes). Name is a placeholder.
    .text
    .globl Batch_024ca420
Batch_024ca420:
    mflr    r0
    stwu    r1,-16(r1)
    lis     r11,4107
    lfs     f0,-20376(r11)
    stw     r31,12(r1)
    li      r12,0
    stw     r0,20(r1)
    lwz     r0,536(r3)
    mr      r31,r4
    stw     r12,576(r3)
    cmpwi   r0,1
    lwz     r11,576(r3)
    bne-    L024ca4e4
    lfs     f11,608(r3)
    fabs    f13,f11
    lfs     f12,476(r3)
    fcmpu   cr0,f13,f12
    blt-    L024ca4e4
    lbz     r10,540(r3)
    cmpwi   r10,0
    beq-    L024ca4ac
    fcmpu   cr0,f11,f0
    lfs     f0,484(r3)
    lfs     f12,608(r3)
    mfcr    r0
    fmuls   f13,f0,f12
    rlwinm  r5,r0,2,31,31
    lbz     r4,540(r3)
    fabs    f1,f13
    xori    r5,r5,1
    stb     r5,541(r3)
    bl      ext_024c995c
    cmpwi   r31,0
    beq-    L024ca51c
    b       L024ca508
L024ca4ac:
    fcmpu   cr0,f11,f0
    lfs     f0,484(r3)
    lfs     f12,608(r3)
    mfcr    r9
    fmuls   f13,f0,f12
    srwi    r5,r9,31
    lbz     r4,540(r3)
    fabs    f1,f13
    xori    r5,r5,1
    stb     r5,541(r3)
    bl      ext_024c995c
    cmpwi   r31,0
    beq-    L024ca51c
    b       L024ca508
L024ca4e4:
    stw     r12,536(r3)
    lwz     r10,536(r3)
    li      r11,-1
    stfs    f0,544(r3)
    stw     r11,568(r3)
    stw     r11,572(r3)
    bl      ext_024ca1b0
    cmpwi   r31,0
    beq-    L024ca51c
L024ca508:
    li      r9,6
    mr      r3,r31
    addi    r4,r1,8
    stw     r9,8(r1)
    bl      ext_024c9ef8
L024ca51c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
