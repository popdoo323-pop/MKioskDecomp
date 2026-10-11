# Converted from the disassembly of 0x02025b88 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_02025b88
Batch_02025b88:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r12,36(r30)
    lbz     r0,188(r12)
    cmpwi   r0,0
    li      r31,0
    bne-    L02025bf8
    lfs     f13,80(r30)
    lis     r11,4120
    fabs    f13,f13
    lfs     f0,-13384(r11)
    fcmpu   cr0,f13,f0
    bge-    L02025bf8
    lwz     r10,40(r30)
    lwz     r3,84(r10)
    bl      ext_02185df8
    cmpwi   r3,0
    bne-    L02025bf8
    lwz     r12,40(r30)
    lwz     r3,84(r12)
    bl      ext_02186008
    cmpwi   r3,0
    bne-    L02025bf8
    li      r31,1
L02025bf8:
    lwz     r0,20(r1)
    clrlwi  r3,r31,24
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
