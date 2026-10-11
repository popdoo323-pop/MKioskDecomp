# Converted from the disassembly of 0x0203b1a4 (576 bytes). Name is a placeholder.
    .text
    .globl Batch_0203b1a4
Batch_0203b1a4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    bl      ext_02041f68
    bl      ext_020428ec
    mr      r30,r3
    bl      ext_02041f68
    lwz     r0,308(r3)
    lis     r11,4120
    cmplwi  r0,46
    lis     r31,4120
    bge-    L0203b230
    cmplwi  r0,22
    beq-    L0203b294
    cmplwi  r0,23
    beq-    L0203b2cc
    cmplwi  r0,25
    blt-    L0203b3c0
    cmplwi  r0,27
    ble-    L0203b304
    cmplwi  r0,34
    blt-    L0203b3c0
    lis     r4,4096
    mr      r3,r30
    lwz     r5,-10804(r11)
    addi    r4,r4,18820
    bl      ext_0203ca90
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0203b230:
    cmplwi  r0,84
    bge-    L0203b27c
    cmplwi  r0,46
    beq-    L0203b330
    cmplwi  r0,65
    ble-    L0203b368
    cmplwi  r0,67
    blt-    L0203b3c0
    lis     r4,4096
    mr      r3,r30
    lwz     r5,-10804(r11)
    addi    r4,r4,18844
    bl      ext_0203ca90
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0203b27c:
    cmplwi  r0,84
    beq-    L0203b394
    cmplwi  r0,86
    ble-    L0203b3cc
    cmplwi  r0,105
    bne-    L0203b3c0
L0203b294:
    lwz     r4,-10804(r11)
    mr      r3,r30
    bl      ext_0203cadc
    lis     r10,4096
    lwz     r4,-10796(r31)
    lfs     f1,18804(r10)
    mr      r3,r30
    bl      ext_0203cc50
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0203b2cc:
    lwz     r4,-10804(r11)
    mr      r3,r30
    bl      ext_0203cadc
    lis     r12,4120
    lwz     r4,-10796(r31)
    lfs     f1,-10800(r12)
    mr      r3,r30
    bl      ext_0203cc50
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
L0203b304:
    lis     r4,4096
    mr      r3,r30
    lwz     r5,-10804(r11)
    addi    r4,r4,18820
    bl      ext_0203ca90
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0203b330:
    lwz     r4,-10804(r11)
    mr      r3,r30
    bl      ext_0203cadc
    lis     r12,4120
    lwz     r4,-10796(r31)
    lfs     f1,-10788(r12)
    mr      r3,r30
    bl      ext_0203cc50
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
L0203b368:
    lis     r4,4096
    mr      r3,r30
    lwz     r5,-10804(r11)
    addi    r4,r4,18844
    bl      ext_0203ca90
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0203b394:
    lis     r4,4096
    mr      r3,r30
    lwz     r5,-10804(r11)
    addi    r4,r4,18808
    bl      ext_0203ca90
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0203b3c0:
    lwz     r4,-10804(r11)
    mr      r3,r30
    bl      ext_0203cb28
L0203b3cc:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
