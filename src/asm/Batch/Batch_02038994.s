# Converted from the disassembly of 0x02038994 (320 bytes). Name is a placeholder.
    .text
    .globl Batch_02038994
Batch_02038994:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r29,12(r1)
    stw     r28,8(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    mr      r30,r3
    stw     r0,28(r1)
    lbz     r0,548(r30)
    cmpwi   r0,0
    bne-    L02038ab4
    li      r9,1
    lfs     f1,524(r30)
    stb     r9,548(r30)
    mr      r3,r30
    stb     r9,444(r30)
    bl      ext_020384f0
    lfs     f1,540(r30)
    mr      r3,r30
    bl      ext_02038794
    lfs     f1,544(r30)
    mr      r3,r30
    bl      ext_020387dc
    lfs     f1,528(r30)
    mr      r3,r30
    bl      ext_0203887c
    lfs     f1,532(r30)
    mr      r3,r30
    bl      ext_02038908
    lis     r12,4096
    addi    r3,r30,500
    lfs     f1,17160(r12)
    li      r4,0
    bl      ext_0262efe0
    li      r31,0
    li      r29,14
L02038a24:
    addi    r3,r30,4
    mr      r4,r31
    bl      ext_02598144
    li      r4,33
    bl      ext_0259bffc
    addic.  r29,r29,-1
    addi    r31,r31,1
    bne+    L02038a24
    bl      ext_02041f68
    bl      ext_020428e4
    bl      ext_02631ca0
    cmpwi   r3,2
    bne-    L02038a68
    bl      ext_02041f68
    bl      ext_020428e4
    li      r4,0
    bl      ext_02631bd4
L02038a68:
    lis     r29,4120
    li      r28,14
    addi    r29,r29,-11472
    li      r31,0
L02038a78:
    mr      r4,r31
    addi    r3,r30,4
    bl      ext_02598144
    lwz     r0,48(r3)
    addi    r31,r31,1
    addic.  r28,r28,-1
    stwu    r0,4(r29)
    bne+    L02038a78
    bl      ext_02041f68
    bl      ext_020428f4
    bl      ext_020324e8
    lwz     r3,376(r30)
    bl      ext_02636010
    lwz     r3,376(r30)
    bl      ext_02635fa8
L02038ab4:
    lwz     r28,8(r1)
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
