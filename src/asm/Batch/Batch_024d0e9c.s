# Converted from the disassembly of 0x024d0e9c (360 bytes). Name is a placeholder.
    .text
    .globl Batch_024d0e9c
Batch_024d0e9c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r4
    stw     r0,20(r1)
    lwz     r12,20(r31)
    cmpwi   r12,0
    mr      r30,r3
    bne-    L024d0efc
    lwz     r11,500(r30)
    cmpwi   r11,1
    beq-    L024d0fec
    cmpwi   r11,2
    bne-    L024d0ee0
    mr      r3,r30
    bl      ext_024d0c04
L024d0ee0:
    li      r11,1
    stw     r11,528(r30)
    lwz     r12,20(r31)
    cmpwi   r12,3
    lwz     r0,528(r30)
    bne-    L024d0f68
    b       L024d0f78
L024d0efc:
    cmpwi   r12,3
    bne-    L024d0f68
    lwz     r0,528(r30)
    cmpwi   r0,2
    bne-    L024d0f78
    lfs     f13,544(r30)
    lfs     f0,492(r30)
    fcmpu   cr0,f13,f0
    ble-    L024d0f40
    li      r4,0
    mr      r3,r30
    mr      r5,r4
    bl      ext_024d07d8
    lwz     r12,20(r31)
    cmpwi   r12,3
    bne-    L024d0f68
    b       L024d0f78
L024d0f40:
    lfs     f0,496(r30)
    fcmpu   cr0,f13,f0
    bge-    L024d0f78
    li      r5,1
    li      r4,0
    mr      r3,r30
    bl      ext_024d07d8
    lwz     r12,20(r31)
    cmpwi   r12,3
    beq-    L024d0f78
L024d0f68:
    cmpwi   r12,4
    beq-    L024d0f78
    cmpwi   r12,1
    bne-    L024d0fec
L024d0f78:
    lwz     r12,500(r30)
    cmpwi   r12,1
    bne-    L024d0fc4
    lfs     f1,552(r30)
    fabs    f13,f1
    lfs     f0,432(r30)
    fcmpu   cr0,f13,f0
    mr      r3,r30
    blt-    L024d0fc0
    lbz     r4,508(r30)
    bl      ext_024d0c20
    li      r0,0
    stw     r0,528(r30)
    lwz     r0,20(r31)
    cmpwi   r0,1
    lwz     r0,528(r30)
    bne-    L024d0fec
    b       L024d0fdc
L024d0fc0:
    bl      ext_024d0cc8
L024d0fc4:
    li      r0,0
    stw     r0,528(r30)
    lwz     r0,20(r31)
    cmpwi   r0,1
    lwz     r0,528(r30)
    bne-    L024d0fec
L024d0fdc:
    li      r11,1
    mr      r3,r31
    stb     r11,233(r30)
    bl      ext_0248a66c
L024d0fec:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
