# Converted from the disassembly of 0x024c3d80 (312 bytes). Name is a placeholder.
    .text
    .globl Batch_024c3d80
Batch_024c3d80:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    lis     r10,4117
    stw     r0,20(r1)
    lwz     r10,3660(r10)
    lwz     r12,12(r10)
    lwz     r0,0(r12)
    mr      r30,r3
    cmplwi  r0,3
    lwz     r12,4(r12)
    ble-    L024c3db8
    addi    r12,r12,12
L024c3db8:
    lis     r11,4119
    lwzu    r0,4616(r11)
    lis     r4,4119
    lwz     r31,0(r12)
    cmpwi   r0,0
    addi    r4,r4,4620
    bne-    L024c3de8
    lis     r8,4107
    li      r12,1
    addi    r8,r8,-25872
    stw     r12,0(r11)
    stw     r8,0(r4)
L024c3de8:
    cmpwi   r31,0
    beq-    L024c3e0c
    lwz     r10,36(r31)
    lwz     r9,12(r10)
    mtctr   r9
    mr      r3,r31
    bctrl
    cmpwi   r3,0
    bne-    L024c3e10
L024c3e0c:
    li      r31,0
L024c3e10:
    lwz     r11,604(r31)
    mr      r3,r30
    lwz     r31,0(r11)
    li      r6,0
    lwz     r4,96(r30)
    mr      r5,r31
    bl      ext_024806dc
    lwz     r4,100(r30)
    mr      r3,r30
    mr      r5,r31
    li      r6,0
    bl      ext_024806dc
    lwz     r10,28(r30)
    cmplwi  r10,1
    lwz     r9,32(r30)
    ble-    L024c3e54
    addi    r9,r9,4
L024c3e54:
    lis     r8,4107
    lwz     r3,0(r9)
    lfs     f1,-25824(r8)
    li      r4,1
    bl      ext_0247f968
    mr      r3,r30
    bl      ext_024800e0
    lwz     r0,28(r30)
    cmplwi  r0,1
    lwz     r11,32(r30)
    ble-    L024c3e84
    addi    r11,r11,4
L024c3e84:
    lis     r8,4107
    lwz     r3,0(r11)
    lfs     f1,-25828(r8)
    li      r4,0
    bl      ext_0247f854
    li      r0,1
    stb     r0,109(r30)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
