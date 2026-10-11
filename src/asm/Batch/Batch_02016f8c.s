# Converted from the disassembly of 0x02016f8c (188 bytes). Name is a placeholder.
    .text
    .globl Batch_02016f8c
Batch_02016f8c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r30,72(r31)
    lwz     r3,84(r30)
    bl      ext_02186008
    cmpwi   r3,0
    bne-    L02017004
    lwz     r3,84(r30)
    bl      ext_0218606c
    cmpwi   r3,0
    beq-    L0201701c
    lwz     r3,84(r30)
    bl      ext_02185f5c
    cmpwi   r3,0
    beq-    L0201701c
    lwz     r3,84(r30)
    bl      ext_0218608c
    cmpwi   r3,0
    bne-    L0201701c
    lwz     r0,124(r30)
    cmpwi   r0,60
    ble-    L0201701c
    lwz     r3,84(r30)
    bl      ext_0218641c
    cmpwi   r3,30
    ble-    L0201701c
L02017004:
    lis     r12,4096
    lfs     f0,4896(r12)
    mr      r3,r31
    stfs    f0,132(r31)
    bl      ext_0201697c
    b       L02017030
L0201701c:
    lis     r12,4096
    lfs     f0,4904(r12)
    mr      r3,r31
    stfs    f0,132(r31)
    bl      ext_0201697c
L02017030:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
