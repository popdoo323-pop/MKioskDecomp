# Converted from the disassembly of 0x0202598c (308 bytes). Name is a placeholder.
    .text
    .globl Batch_0202598c
Batch_0202598c:
    mflr    r0
    stwu    r1,-64(r1)
    stw     r30,56(r1)
    stw     r29,52(r1)
    stw     r28,48(r1)
    stw     r31,60(r1)
    lis     r12,4120
    stw     r0,68(r1)
    lwz     r8,0(r4)
    li      r0,0
    lwz     r12,-13412(r12)
    stw     r0,20(r1)
    stw     r12,32(r1)
    lhz     r5,32(r1)
    stw     r12,36(r1)
    lhz     r12,38(r1)
    lhz     r11,36(r1)
    lhz     r6,34(r1)
    sth     r11,14(r1)
    sth     r6,12(r1)
    sth     r12,16(r1)
    srwi    r30,r8,16
    sth     r5,10(r1)
    sth     r30,10(r1)
    stb     r0,8(r1)
    stw     r0,24(r1)
    clrlwi  r29,r8,16
    addi    r4,r1,8
    stb     r0,28(r1)
    li      r5,-1
    mr      r28,r3
    sth     r29,12(r1)
    bl      ext_02025794
    stw     r3,40(r1)
    lhz     r10,40(r1)
    lwz     r7,44(r28)
    lhz     r0,42(r1)
    sth     r10,44(r1)
    sth     r0,46(r1)
    lwz     r8,44(r1)
    lwz     r3,0(r7)
    srwi    r4,r8,16
    clrlwi  r5,r8,16
    addi    r31,r28,48
    bl      ext_020062f0
    stw     r3,48(r28)
    lwz     r11,24(r1)
    mr      r4,r30
    lwz     r12,44(r28)
    mr      r5,r29
    stw     r11,76(r28)
    lwz     r3,0(r12)
    addi    r30,r28,52
    bl      ext_020062f0
    stw     r3,52(r28)
    li      r8,2
    addi    r7,r28,56
    b       L02025a7c
L02025a74:
    cmplwi  r8,6
    bge-    L02025a84
L02025a7c:
    mr      r10,r7
    b       L02025a88
L02025a84:
    mr      r10,r31
L02025a88:
    lwz     r0,0(r30)
    addi    r8,r8,1
    addi    r7,r7,4
    cmpwi   r8,6
    stw     r0,0(r10)
    blt+    L02025a74
    lwz     r28,48(r1)
    lwz     r29,52(r1)
    lwz     r0,68(r1)
    lwz     r30,56(r1)
    mtlr    r0
    lwz     r31,60(r1)
    addi    r1,r1,64
    blr
