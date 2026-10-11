# Converted from the disassembly of 0x024d552c (164 bytes). Name is a placeholder.
    .text
    .globl Batch_024d552c
Batch_024d552c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    lwz     r0,536(r3)
    cmpwi   r0,0
    bne-    L024d55a0
    lwz     r12,56(r3)
    srwi.   r0,r12,31
    beq-    L024d55a0
    lbz     r0,24(r3)
    cmpwi   r0,0
    beq-    L024d55a0
    lwz     r12,32(r3)
    lwz     r31,0(r12)
    lwz     r12,4(r31)
    cmpwi   r12,0
    bne-    L024d558c
    mr      r3,r31
    bl      ext_0247fa68
    lis     r12,4107
    lfs     f0,-17352(r12)
    fcmpu   cr0,f1,f0
    ble-    L024d55a0
L024d558c:
    mr      r3,r31
    li      r4,1
    bl      ext_0247fdd8
    cmpwi   r3,0
    beq-    L024d55b8
L024d55a0:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    li      r3,0
    blr
L024d55b8:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    li      r3,1
    blr
