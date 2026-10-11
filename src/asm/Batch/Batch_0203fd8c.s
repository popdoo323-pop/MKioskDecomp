# Converted from the disassembly of 0x0203fd8c (244 bytes). Name is a placeholder.
    .text
    .globl Batch_0203fd8c
Batch_0203fd8c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L0203fdb8
    li      r3,144
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0203fe64
L0203fdb8:
    lis     r11,4096
    mr.     r3,r31
    addi    r11,r11,20132
    li      r30,0
    stw     r11,140(r31)
    bne-    L0203fde0
    li      r3,36
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L0203fe0c
L0203fde0:
    stw     r30,0(r3)
    li      r0,-1
    stb     r30,33(r3)
    stw     r0,28(r3)
    stw     r30,4(r3)
    stw     r30,20(r3)
    stw     r30,12(r3)
    stb     r30,32(r3)
    stw     r30,24(r3)
    stw     r30,16(r3)
    sth     r30,8(r3)
L0203fe0c:
    stb     r30,137(r31)
    lis     r10,4096
    stw     r30,40(r31)
    lfs     f0,20148(r10)
    stw     r30,52(r31)
    stfs    f0,36(r31)
    stw     r30,44(r31)
    stw     r30,96(r31)
    stw     r30,80(r31)
    stw     r30,48(r31)
    stw     r30,60(r31)
    sth     r30,92(r31)
    stw     r30,84(r31)
    stb     r30,136(r31)
    stw     r30,88(r31)
    stw     r30,68(r31)
    li      r0,16
    stb     r30,56(r31)
    sth     r0,64(r31)
    stw     r30,76(r31)
    stw     r30,100(r31)
    stw     r30,72(r31)
L0203fe64:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
