# Converted from the disassembly of 0x02000ed0 (236 bytes). Name is a placeholder.
    .text
    .globl Batch_02000ed0
Batch_02000ed0:
    mflr    r0
    lis     r12,4124
    stwu    r1,-72(r1)
    addi    r12,r12,26744
    stw     r31,68(r1)
    stw     r0,76(r1)
    lwz     r11,4(r12)
    lwz     r0,8(r12)
    lwz     r10,0(r12)
    lwz     r7,128(r4)
    stw     r10,8(r1)
    mr      r31,r3
    stw     r0,16(r1)
    cmpwi   r7,0
    stw     r11,12(r1)
    beq-    L02000f3c
    lwz     r3,96(r4)
    lwz     r5,128(r4)
    addi    r4,r1,20
    bl      ext_0202b564
    lfs     f0,56(r1)
    lfs     f13,60(r1)
    stfs    f0,8(r1)
    lfs     f0,64(r1)
    stfs    f13,12(r1)
    stfs    f0,16(r1)
    b       L02000f90
L02000f3c:
    lwz     r3,132(r4)
    cmpwi   r3,0
    beq-    L02000f68
    bl      ext_0215a13c
    lfs     f0,0(r3)
    stfs    f0,8(r1)
    lfs     f0,4(r3)
    stfs    f0,12(r1)
    lfs     f0,8(r3)
    stfs    f0,16(r1)
    b       L02000f90
L02000f68:
    lwz     r10,136(r4)
    cmpwi   r10,0
    beq-    L02000f90
    lwz     r9,20(r10)
    lfs     f0,36(r9)
    stfs    f0,8(r1)
    lfs     f0,40(r9)
    stfs    f0,12(r1)
    lfs     f0,44(r9)
    stfs    f0,16(r1)
L02000f90:
    lwz     r9,12(r1)
    lwz     r8,8(r1)
    lwz     r0,16(r1)
    stw     r8,0(r31)
    stw     r0,8(r31)
    stw     r9,4(r31)
    lwz     r0,76(r1)
    lwz     r31,68(r1)
    mtlr    r0
    addi    r1,r1,72
    blr
