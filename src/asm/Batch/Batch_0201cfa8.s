# Converted from the disassembly of 0x0201cfa8 (548 bytes). Name is a placeholder.
    .text
    .globl Batch_0201cfa8
Batch_0201cfa8:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r31,28(r1)
    mr.     r31,r3
    stw     r28,16(r1)
    stw     r30,24(r1)
    stw     r29,20(r1)
    stw     r4,8(r1)
    stw     r0,36(r1)
    bne-    L0201cfe0
    li      r3,124
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0201d1a8
L0201cfe0:
    mr.     r28,r31
    li      r29,0
    bne-    L0201cffc
    li      r3,52
    bl      ext_0260128c
    mr.     r28,r3
    beq-    L0201d044
L0201cffc:
    mr.     r30,r28
    bne-    L0201d014
    li      r3,48
    bl      ext_0260128c
    mr.     r30,r3
    beq-    L0201d034
L0201d014:
    mr      r3,r30
    bl      ext_02410f5c
    lis     r6,4096
    stw     r29,36(r30)
    addi    r6,r6,8956
    stb     r29,44(r30)
    stw     r6,0(r30)
    stw     r29,40(r30)
L0201d034:
    lis     r7,4096
    stw     r29,48(r28)
    addi    r7,r7,9156
    stw     r7,0(r28)
L0201d044:
    lis     r8,4096
    lis     r9,4096
    addi    r8,r8,9508
    lfs     f0,9356(r9)
    li      r10,1
    stw     r8,0(r31)
    lwz     r9,8(r1)
    stw     r10,84(r31)
    stw     r9,52(r31)
    stw     r29,72(r31)
    stw     r29,76(r31)
    stw     r29,64(r31)
    stw     r29,68(r31)
    stw     r29,56(r31)
    stb     r29,80(r31)
    stw     r29,60(r31)
    lis     r11,4124
    stfs    f0,88(r31)
    lwzu    r0,26780(r11)
    stw     r0,92(r31)
    lwz     r7,4(r11)
    stw     r7,96(r31)
    lwz     r8,8(r11)
    stfs    f0,104(r31)
    stw     r8,100(r31)
    stw     r29,108(r31)
    stb     r29,112(r31)
    stb     r29,116(r31)
    lis     r3,4117
    stw     r29,120(r31)
    lwz     r3,9820(r3)
    bl      ext_0261c858
    lwz     r9,12(r3)
    lwz     r0,52(r9)
    mtctr   r0
    li      r4,4
    li      r5,64
    bctrl
    cmpwi   r3,0
    addi    r30,r31,36
    beq-    L0201d0f4
    stw     r3,40(r31)
    li      r0,1
    stw     r0,36(r31)
L0201d0f4:
    lwz     r10,0(r30)
    cmpwi   r10,0
    ble-    L0201d11c
    li      r12,0
    mtctr   r10
    mr      r7,r12
L0201d10c:
    lwz     r9,4(r30)
    stwx    r7,r9,r12
    addi    r12,r12,4
    bdnz+   L0201d10c
L0201d11c:
    stw     r29,48(r31)
    addi    r3,r1,8
    bl      ext_0201f7b0
    stw     r31,4(r3)
    lwz     r0,8(r31)
    stw     r0,8(r3)
    lwz     r12,48(r31)
    lwz     r6,0(r30)
    cmplw   r12,r6
    lwz     r11,4(r30)
    bge-    L0201d150
    slwi    r0,r12,2
    add     r11,r11,r0
L0201d150:
    lwz     r10,0(r11)
    cmpwi   r10,0
    bne-    L0201d184
    lwz     r6,48(r31)
    addi    r11,r6,1
    stw     r11,48(r31)
    lwz     r12,0(r30)
    cmplw   r6,r12
    lwz     r12,4(r30)
    bge-    L0201d180
    slwi    r0,r6,2
    add     r12,r12,r0
L0201d180:
    stw     r3,0(r12)
L0201d184:
    stw     r3,60(r31)
    lwz     r4,8(r1)
    li      r3,0
    bl      ext_02024b60
    stw     r3,72(r31)
    lwz     r4,8(r1)
    li      r3,0
    bl      ext_02024b60
    stw     r3,76(r31)
L0201d1a8:
    lwz     r28,16(r1)
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    mr      r3,r31
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
