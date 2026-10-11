# Converted from the disassembly of 0x024bd11c (176 bytes). Name is a placeholder.
    .text
    .globl Batch_024bd11c
Batch_024bd11c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024bd148
    addi    r12,r12,4
L024bd148:
    lwz     r30,0(r12)
    lwz     r0,4(r30)
    cmpwi   r0,0
    beq-    L024bd160
    cmpwi   r0,1
    bne-    L024bd18c
L024bd160:
    li      r4,1
    li      r5,0
    mr      r3,r30
    mr      r6,r4
    bl      ext_0247faa4
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L024bd18c:
    lis     r12,4107
    mr      r3,r30
    lfs     f1,-30612(r12)
    li      r4,2
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    li      r4,1
    mr      r3,r30
    bl      ext_0247f798
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
