# Converted from the disassembly of 0x024bddac (212 bytes). Name is a placeholder.
    .text
    .globl Batch_024bddac
Batch_024bddac:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r3
    stw     r30,16(r1)
    stw     r0,28(r1)
    bl      ext_024bd550
    mr      r3,r31
    li      r4,3
    li      r5,1
    bl      ext_02484d54
    lis     r30,4107
    lis     r8,4107
    addi    r30,r30,-31108
    addi    r8,r8,-30480
    stw     r30,12(r1)
    li      r4,0
    addi    r5,r1,8
    stw     r8,8(r1)
    bl      ext_0247f5e8
    lwz     r0,28(r31)
    cmplwi  r0,3
    lwz     r11,32(r31)
    ble-    L024bde10
    addi    r11,r11,12
L024bde10:
    lis     r9,4107
    lwz     r3,0(r11)
    lfs     f1,-30612(r9)
    li      r4,0
    bl      ext_0247f968
    lis     r0,4107
    stw     r30,12(r1)
    addic   r0,r0,-30488
    li      r5,2001
    li      r10,1
    stw     r0,8(r1)
    mr      r3,r31
    addi    r4,r1,8
    stw     r10,252(r31)
    lwz     r11,252(r31)
    bl      ext_02485100
    lis     r12,4117
    lwz     r12,3660(r12)
    li      r0,0
    lwz     r7,60(r12)
    stb     r0,248(r31)
    stw     r7,124(r31)
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    lwz     r30,16(r1)
    addi    r1,r1,24
    blr
