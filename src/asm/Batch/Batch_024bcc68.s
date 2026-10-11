# Converted from the disassembly of 0x024bcc68 (164 bytes). Name is a placeholder.
    .text
    .globl Batch_024bcc68
Batch_024bcc68:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r0,28(r31)
    cmplwi  r0,1
    lwz     r12,32(r31)
    ble-    L024bcc94
    addi    r12,r12,4
L024bcc94:
    lwz     r30,0(r12)
    lwz     r0,4(r30)
    cmpwi   r0,2
    beq-    L024bccf4
    li      r4,0
    mr      r3,r30
    bl      ext_0247fc68
    li      r4,0
    mr      r3,r30
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    lis     r10,4107
    mr      r3,r30
    lfs     f1,-30612(r10)
    li      r4,3
    bl      ext_0247f968
    mr      r3,r31
    bl      ext_024800e0
    lis     r12,4107
    mr      r3,r30
    lfs     f1,-30608(r12)
    li      r4,2
    bl      ext_0247f854
L024bccf4:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
