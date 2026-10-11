# Converted from the disassembly of 0x0203cb78 (216 bytes). Name is a placeholder.
    .text
    .globl Batch_0203cb78
Batch_0203cb78:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    mr      r31,r4
    stfs    f31,24(r1)
    fmr     f31,f1
    addi    r3,r30,36
    stw     r0,36(r1)
    bl      ext_0262ea78
    cmpwi   r3,0
    bne-    L0203cc2c
    stw     r31,40(r30)
    li      r10,0
    stfs    f31,44(r30)
    cmpwi   r31,0
    stb     r10,49(r30)
    ble-    L0203cc28
    lis     r4,4096
    lwz     r3,4(r30)
    li      r0,1
    addi    r4,r4,19264
    stb     r0,48(r30)
    bl      ext_02051068
    mr      r5,r3
    mr      r3,r30
    addi    r4,r30,36
    li      r6,0
    bl      ext_0205494c
    cntlzw  r0,r3
    srwi    r0,r0,5
    stb     r0,49(r30)
    lfs     f31,24(r1)
    lwz     r30,8(r1)
    lfd     f31,16(r1)
    lwz     r31,12(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L0203cc28:
    stb     r10,48(r30)
L0203cc2c:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    lwz     r30,8(r1)
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
