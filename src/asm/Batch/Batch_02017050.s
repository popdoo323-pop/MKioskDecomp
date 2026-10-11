# Converted from the disassembly of 0x02017050 (220 bytes). Name is a placeholder.
    .text
    .globl Batch_02017050
Batch_02017050:
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
    bne-    L020170c8
    lwz     r3,84(r30)
    bl      ext_0218606c
    cmpwi   r3,0
    beq-    L020170ec
    lwz     r3,84(r30)
    bl      ext_02185f5c
    cmpwi   r3,0
    beq-    L020170ec
    lwz     r3,84(r30)
    bl      ext_0218608c
    cmpwi   r3,0
    bne-    L020170ec
    lwz     r0,124(r30)
    cmpwi   r0,60
    ble-    L020170ec
    lwz     r3,84(r30)
    bl      ext_0218641c
    cmpwi   r3,30
    ble-    L020170ec
L020170c8:
    lis     r11,4096
    lfs     f0,4896(r11)
    mr      r3,r31
    stfs    f0,132(r31)
    bl      ext_0201697c
    bl      ext_020161b8
    cmpwi   r3,0
    beq-    L02017114
    b       L0201710c
L020170ec:
    lis     r12,4096
    lfs     f0,4900(r12)
    mr      r3,r31
    stfs    f0,132(r31)
    bl      ext_0201697c
    bl      ext_020161b8
    cmpwi   r3,0
    beq-    L02017114
L0201710c:
    lwz     r3,72(r31)
    bl      ext_02030888
L02017114:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
