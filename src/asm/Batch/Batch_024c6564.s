# Converted from the disassembly of 0x024c6564 (244 bytes). Name is a placeholder.
    .text
    .globl Batch_024c6564
Batch_024c6564:
    mflr    r0
    li      r11,0
    li      r10,1
    stwu    r1,-88(r1)
    stw     r11,12(r1)
    stw     r10,8(r1)
    stw     r31,84(r1)
    stw     r11,16(r1)
    mr      r31,r3
    stw     r0,92(r1)
    lwz     r9,0(r4)
    lwz     r12,16(r31)
    cmpwi   r9,2
    stw     r11,20(r1)
    bne-    L024c65f4
    lwz     r0,20(r31)
    addi    r4,r1,8
    stw     r12,32(r1)
    addi    r3,r1,64
    stw     r0,36(r1)
    bl      ext_0262cb60
    lwz     r7,0(r3)
    stw     r7,40(r1)
    lwz     r8,4(r3)
    addi    r3,r1,32
    addi    r4,r1,40
    stw     r8,44(r1)
    bl      ext_0262d1d4
    stw     r3,24(r1)
    stw     r4,28(r1)
    stw     r3,16(r31)
    mr      r3,r31
    stw     r4,20(r31)
    addi    r4,r31,16
    bl      ext_024c61d0
    b       L024c6644
L024c65f4:
    lwz     r0,20(r31)
    addi    r4,r1,8
    stw     r12,48(r1)
    addi    r3,r1,72
    stw     r0,52(r1)
    bl      ext_0262cb60
    lwz     r8,0(r3)
    stw     r8,56(r1)
    lwz     r10,4(r3)
    addi    r3,r1,48
    addi    r4,r1,56
    stw     r10,60(r1)
    bl      ext_0262d218
    stw     r3,24(r1)
    stw     r4,28(r1)
    stw     r3,16(r31)
    mr      r3,r31
    stw     r4,20(r31)
    addi    r4,r31,16
    bl      ext_024c61d0
L024c6644:
    lwz     r0,92(r1)
    lwz     r31,84(r1)
    mtlr    r0
    addi    r1,r1,88
    blr
