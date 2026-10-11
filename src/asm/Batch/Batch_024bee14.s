# Converted from the disassembly of 0x024bee14 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_024bee14
Batch_024bee14:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r30,16(r1)
    stw     r31,20(r1)
    li      r31,4
    li      r30,0
    stw     r29,12(r1)
    stw     r0,28(r1)
    mr      r29,r3
L024bee38:
    mr      r3,r29
    mr      r4,r30
    bl      ext_02484f34
    cmpwi   r3,0
    bne-    L024bee80
    addic.  r31,r31,-1
    addi    r30,r30,1
    bne+    L024bee38
    lwz     r0,28(r29)
    cmplwi  r0,2
    lwz     r12,32(r29)
    ble-    L024bee6c
    addi    r12,r12,8
L024bee6c:
    lis     r10,4107
    lwz     r3,0(r12)
    lfs     f1,-30612(r10)
    li      r4,0
    bl      ext_0247f968
L024bee80:
    lwz     r29,12(r1)
    lwz     r0,28(r1)
    lwz     r30,16(r1)
    mtlr    r0
    lwz     r31,20(r1)
    addi    r1,r1,24
    blr
